variable "environment" {
  default     = null
  type        = string
  description = "env name"
}
variable "application_name" {
  default     = null
  type        = string
  description = "application_name"
}
variable "cost_center_id" {
  default     = null
  type        = string
  description = "cost_center_id"
}
variable "application_portfolio" {
  default     = null
  type        = string
  description = "application_portfolio"
}
variable "app_team_name" {
  default     = null
  type        = string
  description = "app_team_name"

}
variable "email_id" {
  default     = null
  type        = string
  description = "email_id"

}
variable "tags" {
  default     = null
  type        = map(string)
  description = "tags"

}
