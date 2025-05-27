output "bucket_domain_name" {
  value       = data.aws_s3_bucket.bucket.bucket_domain_name
  sensitive   = false
  description = "Domain name of the S3 bucket"
}

output "region" {
  value       = data.aws_s3_bucket.bucket.region
  sensitive   = false
  description = "Region where the S3 bucket is located"
}
