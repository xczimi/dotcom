# Get the existing hosted zone
resource "aws_route53_zone" "main" {
  name = local.domain_name
}

# Hosted zone for secondary domain (xczimi.ca)
resource "aws_route53_zone" "secondary" {
  name = local.secondary_domain_name
}

# Certificate validation
resource "aws_acm_certificate_validation" "main" {
  provider        = aws.us_east_1
  certificate_arn = aws_acm_certificate.main.arn
  validation_record_fqdns = concat(
    [for record in aws_route53_record.cert_validation : record.fqdn],
    [for record in aws_route53_record.cert_validation_secondary : record.fqdn]
  )

  timeouts {
    create = "10m"
  }
}

# Certificate validation records for primary domain (xczimi.com)
resource "aws_route53_record" "cert_validation" {
  for_each = {
    for dvo in aws_acm_certificate.main.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    } if endswith(dvo.domain_name, local.domain_name)
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = aws_route53_zone.main.zone_id
}

# Certificate validation records for secondary domain (xczimi.ca)
resource "aws_route53_record" "cert_validation_secondary" {
  for_each = {
    for dvo in aws_acm_certificate.main.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    } if endswith(dvo.domain_name, local.secondary_domain_name)
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = aws_route53_zone.secondary.zone_id
}

# A record for main domain pointing to CloudFront
resource "aws_route53_record" "main_a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = local.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.main.domain_name
    zone_id                = aws_cloudfront_distribution.main.hosted_zone_id
    evaluate_target_health = false
  }
}

# AAAA record for main domain pointing to CloudFront (IPv6)
resource "aws_route53_record" "main_aaaa" {
  zone_id = aws_route53_zone.main.zone_id
  name    = local.domain_name
  type    = "AAAA"

  alias {
    name                   = aws_cloudfront_distribution.main.domain_name
    zone_id                = aws_cloudfront_distribution.main.hosted_zone_id
    evaluate_target_health = false
  }
}

# A record for wildcard subdomain pointing to main CloudFront
resource "aws_route53_record" "wildcard_a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "*.${local.domain_name}"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.main.domain_name
    zone_id                = aws_cloudfront_distribution.main.hosted_zone_id
    evaluate_target_health = false
  }
}

# AAAA record for wildcard subdomain pointing to main CloudFront (IPv6)
resource "aws_route53_record" "wildcard_aaaa" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "*.${local.domain_name}"
  type    = "AAAA"

  alias {
    name                   = aws_cloudfront_distribution.main.domain_name
    zone_id                = aws_cloudfront_distribution.main.hosted_zone_id
    evaluate_target_health = false
  }
}

# A record for secondary domain pointing to CloudFront
resource "aws_route53_record" "secondary_a" {
  zone_id = aws_route53_zone.secondary.zone_id
  name    = local.secondary_domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.main.domain_name
    zone_id                = aws_cloudfront_distribution.main.hosted_zone_id
    evaluate_target_health = false
  }
}

# AAAA record for secondary domain pointing to CloudFront (IPv6)
resource "aws_route53_record" "secondary_aaaa" {
  zone_id = aws_route53_zone.secondary.zone_id
  name    = local.secondary_domain_name
  type    = "AAAA"

  alias {
    name                   = aws_cloudfront_distribution.main.domain_name
    zone_id                = aws_cloudfront_distribution.main.hosted_zone_id
    evaluate_target_health = false
  }
}

# A record for wildcard subdomain of secondary domain
resource "aws_route53_record" "secondary_wildcard_a" {
  zone_id = aws_route53_zone.secondary.zone_id
  name    = "*.${local.secondary_domain_name}"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.main.domain_name
    zone_id                = aws_cloudfront_distribution.main.hosted_zone_id
    evaluate_target_health = false
  }
}

# AAAA record for wildcard subdomain of secondary domain (IPv6)
resource "aws_route53_record" "secondary_wildcard_aaaa" {
  zone_id = aws_route53_zone.secondary.zone_id
  name    = "*.${local.secondary_domain_name}"
  type    = "AAAA"

  alias {
    name                   = aws_cloudfront_distribution.main.domain_name
    zone_id                = aws_cloudfront_distribution.main.hosted_zone_id
    evaluate_target_health = false
  }
}
