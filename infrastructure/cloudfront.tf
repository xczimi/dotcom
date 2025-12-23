# ACM Certificate for CloudFront (must be in us-east-1)
resource "aws_acm_certificate" "main" {
  provider          = aws.us_east_1
  domain_name       = local.domain_name
  subject_alternative_names = ["*.${local.domain_name}"]
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}

# CloudFront Origin Access Control
resource "aws_cloudfront_origin_access_control" "main" {
  name                              = "${local.domain_name}-oac"
  description                       = "OAC for ${local.domain_name}"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

# CloudFront Function to redirect subdomains and rewrite directory paths
resource "aws_cloudfront_function" "redirect_subdomains" {
  name    = "redirect-subdomains"
  runtime = "cloudfront-js-2.0"
  code    = <<-EOF
    function handler(event) {
      var request = event.request;
      var host = request.headers.host.value;
      var uri = request.uri;

      // Redirect subdomains to main domain
      if (host !== 'xczimi.com') {
        return {
          statusCode: 301,
          statusDescription: 'Moved Permanently',
          headers: { location: { value: 'https://xczimi.com' + uri } }
        };
      }

      // Rewrite directory paths to index.html
      if (uri.endsWith('/')) {
        request.uri = uri + 'index.html';
      } else if (!uri.includes('.')) {
        // Path without extension - add trailing slash and index.html
        request.uri = uri + '/index.html';
      }

      return request;
    }
  EOF
}

# CloudFront distribution for main domain
resource "aws_cloudfront_distribution" "main" {
  depends_on = [aws_acm_certificate_validation.main]

  origin {
    domain_name              = aws_s3_bucket.main.bucket_regional_domain_name
    origin_access_control_id = aws_cloudfront_origin_access_control.main.id
    origin_id                = "S3-${local.domain_name}"
  }

  enabled             = true
  is_ipv6_enabled     = true
  default_root_object = "index.html"
  price_class         = var.price_class

  aliases = [local.domain_name, "*.${local.domain_name}"]

  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "S3-${local.domain_name}"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
    compress               = true

    function_association {
      event_type   = "viewer-request"
      function_arn = aws_cloudfront_function.redirect_subdomains.arn
    }
  }

  # Cache behavior for CSS files
  ordered_cache_behavior {
    path_pattern     = "*.css"
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "S3-${local.domain_name}"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 31536000  # 1 year
    max_ttl                = 31536000  # 1 year
    compress               = true
  }

  # Cache behavior for JS files
  ordered_cache_behavior {
    path_pattern     = "*.js"
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "S3-${local.domain_name}"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 31536000  # 1 year
    max_ttl                = 31536000  # 1 year
    compress               = true
  }

  # Cache behavior for images
  ordered_cache_behavior {
    path_pattern     = "*.jpg"
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "S3-${local.domain_name}"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 31536000  # 1 year
    max_ttl                = 31536000  # 1 year
    compress               = false
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn      = aws_acm_certificate.main.arn
    ssl_support_method       = var.ssl_support_method
    minimum_protocol_version = var.minimum_protocol_version
  }

  custom_error_response {
    error_code         = 404
    response_code      = 404
    response_page_path = "/404.html"
  }
}
