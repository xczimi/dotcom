variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "ca-central-1"
}

variable "domain_name" {
  description = "Primary domain name"
  type        = string
  default     = "xczimi.com"
}

variable "price_class" {
  description = "CloudFront price class"
  type        = string
  default     = "PriceClass_100" # Use only US, Canada, and Europe
}

variable "ssl_support_method" {
  description = "SSL support method for CloudFront"
  type        = string
  default     = "sni-only"
}

variable "minimum_protocol_version" {
  description = "Minimum SSL protocol version"
  type        = string
  default     = "TLSv1.2_2021"
}
