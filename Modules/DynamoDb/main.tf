resource "aws_dynamodb_table" "table" {
  name         = "${var.name}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  range_key    = "title"

  attribute {
    name = "id"
    type = "N"
  }

  attribute {
    name = "title"
    type = "S"
  }

  attribute {
    name = "age"
    type = "N"
  }

  global_secondary_index {
    name               = "TitleIndex"
    hash_key           = "title"
    range_key          = "age"
    projection_type    = "INCLUDE"
    non_key_attributes = ["id"]
  }

  tags = {
    Terraform   = "true"
    Environment = "staging"
  }

}