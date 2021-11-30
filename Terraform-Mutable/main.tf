module "cart" {
  source              ="git::https://github.com/kana-Gayatri/terraform-mutable.git//app-module"
  //source              = "git::https://DevOps-Batches@dev.azure.com/DevOps-Batches/DevOps60/_git/terraform-mutable//app-module"
  INSTANCE_TYPE       = var.INSTANCE_TYPE
  ENV                 = var.ENV
  SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT   = var.OD_INSTANCE_COUNT
  COMPONENT           = "user"
  PORT                = 8080
  IS_PRIVATE_LB       = true
  LB_RULE_PRIORITY    = 105
#  APP_VERSION         = var.APP_VERSION
#  NEXUS_USER          = var.NEXUS_USER
#  NEXUS_PASS          = var.NEXUS_PASS
}

output "INSTANCE_IDS" {
  value = module.cart.INSTANCE_IDS
}
