terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "employee_data" {
  filename = "employees.txt"

  content = <<EOF
Employee Name : Nandan
Department    : Data Engineering
Technology    : Terraform
Environment   : Production
EOF
}