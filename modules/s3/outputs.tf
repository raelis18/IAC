output "bucket_domain_name"{
  value       = aws_s3_bucket.bucket.bucket_domain_name
  sensitive   = false
  description = "Domain name of the S3 bucket"
}

output "origin_id" {
  value       = aws_s3_bucket.bucket.id
  sensitive   = false
  description = "Domain name of the S3 bucket"
}