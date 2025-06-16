variable state_bucket_name {
  type        = string
  default     = "rockeatseat-terraform-state-bucket"
  description = "default name for the S3 bucket used to store Terraform state files"
}
