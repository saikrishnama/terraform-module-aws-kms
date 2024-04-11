resource "aws_kms_key" "kms_key" {
  description              = var.description
  key_usage                = try(var.kms_key_usage, "ENCRYPT_DECRYPT")
  custom_key_store_id      = try(var.custom_key_store_id, null)
  customer_master_key_spec = try(var.customer_master_key_spec, "SYMMETRIC_DEFAULT")
  deletion_window_in_days  = try(var.deletion_window_in_days, 30)
  enable_key_rotation      = try(var.enable_key_rotation, true)
  is_enabled               = try(var.is_kms_enabled, true)
  multi_region             = var.multi_region
  # tags                     = var.required_tags
}

resource "aws_kms_alias" "alias" {
  count = var.alias_use_name_prefix != null || var.alias_name != null ? 1 : 0
  name_prefix = var.alias_use_name_prefix != null ? var.alias_name : null
  name = var.alias_use_name_prefix == null ? var.alias_name : null
  target_key_id = aws_kms_key.kms_key.key_id
}
