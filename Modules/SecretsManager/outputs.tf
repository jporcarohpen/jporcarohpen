output "aws_secretsmanager_secret_arn" {
  description = "Arn of the SecretsManager secret"
  value       = aws_secretsmanager_secret.secret.arn
}

output "aws_secretsmanager_secret_id" {
  description = "ID of the SecretsManager secret"
  value       = aws_secretsmanager_secret.secret.id
}
