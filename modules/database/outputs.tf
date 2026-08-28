output "dynamodb_name" {
  description = "Name of the table created in DynamoDB"
  value       = aws_dynamodb_table.table_dynamodb.id
}