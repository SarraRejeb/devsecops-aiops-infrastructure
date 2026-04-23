terraform {
  required_version = ">= 1.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.54"
    }
  }
}

provider "openstack" {
  auth_url    = "http://10.0.1.10:5000/v3"
  user_name   = "sarra"
  password    = "devsecops2026"
  tenant_name = "devsecops-aiops-sarra"
  domain_name = "Default"
  insecure    = true
}
