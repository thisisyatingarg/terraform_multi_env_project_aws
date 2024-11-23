resource "aws_dynamodb_table" "my-table" {
  name         = "${var.my_env}-${var.table_name}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  attribute {
    name = "id"
    type = "S"
  }
}
