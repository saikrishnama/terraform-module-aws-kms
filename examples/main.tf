module "required_tags" {
  source                = "https://github.com/saikrishnama/terraform-resource-tags.git?ref=master"
  environment           = var.environment
  cost_center_id        = var.cost_center_id
  app_team_name         = var.app_team_name
  application_name      = var.application_name
  application_portfolio = var.application_portfolio
  email_id              = var.email_id
  tags                  = var.tags
}
module "kms" {
  source                   = "../"
  description              = "sample-kmskey"
  kms_key_usage            = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  # deletion_window_in_days  = 7
  multi_region = false
  required_tags = module.required_tags

}
