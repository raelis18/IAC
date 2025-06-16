variable bucket_name {
  type        = string
  description = "Nome do bucket S3"
}

variable s3_tags {
  type        = map(string)
  description = "Tags para o CloudFront"
  default     = {}
}
