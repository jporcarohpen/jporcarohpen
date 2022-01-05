variable "name" {
  type        = string
  description = "Name of the table"
}

variable "recovery_window_in_days" {
  type        = string
  description = "Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery"
}
