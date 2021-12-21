##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  # access_key = var.aws_access_key
  # secret_key = var.aws_secret_key
  region  = var.region
  profile = var.aws_profile
}

##################################################################################
# VARIABLES
##################################################################################

# variable "aws_access_key" {}
# variable "aws_secret_key" {}
variable "aws_profile" {}
variable "region" {
  default = "eu-west-1"
}

##################################################################################
# DATA
##################################################################################


##################################################################################
# RESOURCES
##################################################################################

resource "aws_dynamodb_table" "table1" {
  name         = "jporcar_table1"
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

resource "aws_dynamodb_table" "table2" {
  name         = "jporcar_table2"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  range_key    = "title"

  dynamic "attribute" {
    for_each = local.table2_attributes

    content {
      name = attribute.value.name
      type = attribute.value.type
    }
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
