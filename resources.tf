
##################################################################################
# DATA
##################################################################################


##################################################################################
# RESOURCES
##################################################################################

module "table3" {
  source = ".\\Modules\\DynamoDb"
  name   = "${local.prefix}table3"
}

module "table4" {
  source = ".\\Modules\\DynamoDb"
  name   = "${local.prefix}table4"
}

module "secret1" {
  source                  = ".\\Modules\\SecretsManager"
  name                    = "${local.prefix}secret1"
  recovery_window_in_days = 0
}
