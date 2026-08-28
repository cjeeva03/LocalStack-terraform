resource "aws_dynamodb_table" "table_dynamodb" {
  name         = "Jeeva_table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "user_id"
  attribute {
    name = "user_id"
    type = "S"
  }

  tags = {
    Environment = var.environment
    Author      = var.author
  }
}