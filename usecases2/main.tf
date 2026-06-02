terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "app_details" {

  filename = "${var.environment}-config.txt"

  content = <<EOF
Application : ${var.application_name}
Environment : ${var.environment}
Owner       : Nandan
EOF

}