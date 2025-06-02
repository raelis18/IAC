resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}-${terraform.workspace}"

  tags = var.s3_tags
}
