resource "aws_secretsmanager_secret" "secret" {
  name                    = var.name
  recovery_window_in_days = var.recovery_window_in_days

  tags = {
    Terraform   = "true"
    Environment = "staging"
  }
}
