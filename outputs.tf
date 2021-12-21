##################################################################################
# OUTPUT
##################################################################################

output "aws_dynamodb_table_arn" {
  value = aws_dynamodb_table.table1.arn
}

output "aws_dynamodb_table_id" {
  description = "ID of the DynamoDB table"
  value       = aws_dynamodb_table.table1.id
}