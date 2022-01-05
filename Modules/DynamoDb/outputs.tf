output "aws_dynamodb_table_arn" {
  description = "Arn of the DynamoDB table"
  value       = aws_dynamodb_table.table.arn
}

output "aws_dynamodb_table_id" {
  description = "ID of the DynamoDB table"
  value       = aws_dynamodb_table.table.id
}
