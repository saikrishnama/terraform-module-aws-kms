variable "required_tags" {
  type        = map(string)
  default     = {}
  description = "tags to add to all resources"
}

variable "description" {
  type        = string
  default     = null
  description = "Description for KMS key"

}
variable "kms_key_usage" {
  type        = string
  default     = null
  description = "Specifies the intended use of the key.Valid values: `ENCRYPT_DECRYPT`, `SIGN_VERIFY`, or `GENERATE_VERIFY_MAC` and Defaults to `ENCRYPT_DECRYPT`"

}
variable "custom_key_store_id" {
  type        = string
  default     = null
  description = "where the key will be stored instead of KMS "

}
variable "customer_master_key_spec" {
  type        = string
  default     = null
  description = "Specifies whether the key contains a symmetric key `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_256`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, or `ECC_SECG_P256K1`. Defaults to `SYMMETRIC_DEFAULT`"
}

variable "deletion_window_in_days" {
  type        = number
  default     = null
  description = "The waiting period, specified in number of days. After the waiting period ends"

}
variable "enable_key_rotation" {
  type        = bool
  default     = true
  description = "Specifies whether key rotation is enabled. "

}
variable "is_kms_enabled" {
  type        = bool
  default     = true
  description = "Specifies whether the key is enabled"

}
variable "multi_region" {
  type        = bool
  default     = false
  description = "Indicates whether the KMS key is a multi-Region (true) or regional"

}

#### Alias Details
variable "alias_use_name_prefix" {
  default = null
  description = "Creates an unique alias beginning with the specified prefix. Dont pass alias/"
  type = string
  
}
variable "alias_name" {
  default = null
  description = " The display name of the alias. Dont pass alias/"
  type = string
  
}