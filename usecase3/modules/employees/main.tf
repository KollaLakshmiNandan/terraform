resource "local_file" "employee_file" {

  filename = "${var.employee_name}.txt"

  content = <<EOF
Employee Name : ${var.employee_name}
Department    : ${var.department}
Project       : ${var.project}
EOF

}