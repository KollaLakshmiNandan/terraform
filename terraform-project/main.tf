resource "aws_instance" "employee_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  tags = {
    Name = "${var.employee_name}-server"
    Owner = var.employee_name
  }
}
resource "aws_s3_bucket" "employee_bucket" {
  bucket = "${var.employee_name}-documents-bucket"
  tags = {
    Name  = "${var.employee_name}-bucket"
    Owner = var.employee_name
  }
}