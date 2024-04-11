output "kms_key_id" {
    description = "KMS Key id"
    value = aws_kms_key.kms_key[0].id
  
}
output "kms_arn" {
    description = "KMS arn value"
    value = aws_kms_key.kms_key[0].arn
}