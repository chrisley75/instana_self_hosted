# Configure the IBM Cloud Provider
terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "~> 1.12.0"
    }
  }
}

provider "ibm" {
  ibmcloud_api_key      = var.IBMCLOUD_API_KEY
  iaas_classic_username = var.IaaS_CLASSIC_USERNAME
  iaas_classic_api_key  = var.IaaS_CLASSIC_API_KEY
}
