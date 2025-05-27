variable origin_id {
  type        = string
  description = "ID do origin para o CloudFront"
}

variable bucket_domain_name {
  type        = string
  description = "Nome de domínio do bucket S3"
}

variable price_class {
  type        = string
  description = "Classe de preço do CloudFront"
  default     = "PriceClass_200"
}

variable cdn_tags {
  type        = map(string)
  description = "Tags para o CloudFront"
  default     = {}
}