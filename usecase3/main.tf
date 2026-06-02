terraform {

  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~>2.5"
    }
  }

}

module "employee1" {

  source = "./modules/employees"

  employee_name = "Nandan"
  department    = "Data Engineering"
  project       = "Terraform Learning"

}