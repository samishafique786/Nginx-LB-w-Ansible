terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}

provider "openstack" {
  user_name       = "you-username-here"
  password        = "psw as well"
  tenant_name     = "//"
  auth_url        = "https://pouta.csc.fi:5001/v3"
  user_domain_name = "Default"
  region          = "regionOne"
}

