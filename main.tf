module "s3" {
  source      = "./modules/s3"
  bucket_name = "rocketseat-iac"
  s3_tags  = {
      IAC   = true
  }
}

module "cloudfront" {
  source             = "./modules/cloudfront"
  origin_id          = module.s3.origin_id
  bucket_domain_name = module.s3.bucket_domain_name
  price_class        = "PriceClass_200"
  cdn_tags           = {
    IAC = true
  }
  depends_on         = [module.s3]
}


