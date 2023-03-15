provider "aws" {
  region = var.region
}
locals {
  feature_flags = {
    provision_bastion_host = var.provision_bastion_host
  }
  tags = {
    Customer           = var.customer
    Category           = var.category
    BusinessUnit       = var.business_unit
    ApplicationName    = var.applicationname
    DataClassification = var.data_classification
    ApproverName       = var.approver_name
    Environment        = var.environment
    OwnerName          = var.owner_name
    Contact            = var.contact
  }
}
module "bastion_host" {
  source        = "../"
  count         = local.feature_flags.provision_bastion_host == true ? 1 : 0
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  tags          = local.tags
}