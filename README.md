# Terrafor Module for KMS key
[![Pre-Commit](https://github.com/saikrishnama/terrafrom-aws-kms/actions/workflows/pre-commit-ci.yml/badge.svg?branch=main)](https://github.com/saikrishnama/terrafrom-aws-kms/actions/workflows/pre-commit-ci.yml)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.alias](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias_name"></a> [alias\_name](#input\_alias\_name) | The display name of the alias. Dont pass alias/ | `string` | `null` | no |
| <a name="input_alias_use_name_prefix"></a> [alias\_use\_name\_prefix](#input\_alias\_use\_name\_prefix) | Creates an unique alias beginning with the specified prefix. Dont pass alias/ | `string` | `null` | no |
| <a name="input_custom_key_store_id"></a> [custom\_key\_store\_id](#input\_custom\_key\_store\_id) | where the key will be stored instead of KMS | `string` | `null` | no |
| <a name="input_customer_master_key_spec"></a> [customer\_master\_key\_spec](#input\_customer\_master\_key\_spec) | Specifies whether the key contains a symmetric key `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_256`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, or `ECC_SECG_P256K1`. Defaults to `SYMMETRIC_DEFAULT` | `string` | `null` | no |
| <a name="input_deletion_window_in_days"></a> [deletion\_window\_in\_days](#input\_deletion\_window\_in\_days) | The waiting period, specified in number of days. After the waiting period ends | `number` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for KMS key | `string` | `null` | no |
| <a name="input_enable_key_rotation"></a> [enable\_key\_rotation](#input\_enable\_key\_rotation) | Specifies whether key rotation is enabled. | `bool` | `true` | no |
| <a name="input_is_kms_enabled"></a> [is\_kms\_enabled](#input\_is\_kms\_enabled) | Specifies whether the key is enabled | `bool` | `true` | no |
| <a name="input_kms_key_usage"></a> [kms\_key\_usage](#input\_kms\_key\_usage) | Specifies the intended use of the key.Valid values: `ENCRYPT_DECRYPT`, `SIGN_VERIFY`, or `GENERATE_VERIFY_MAC` and Defaults to `ENCRYPT_DECRYPT` | `string` | `null` | no |
| <a name="input_multi_region"></a> [multi\_region](#input\_multi\_region) | Indicates whether the KMS key is a multi-Region (true) or regional | `bool` | `false` | no |
| <a name="input_required_tags"></a> [required\_tags](#input\_required\_tags) | tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kms_arn"></a> [kms\_arn](#output\_kms\_arn) | KMS arn value |
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | KMS Key id |
<!-- END_TF_DOCS -->
