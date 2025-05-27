module "s3" {
  source      = "./modules/s3"
  bucket_name = "rocketseat-iac"
}

module "cloudfront" {
  source             = "./modules/cloudfront"
  origin_id          = module.s3.origin_id
  bucket_domain_name = module.s3.bucket_domain_name
  depends_on         = [module.s3]
}


