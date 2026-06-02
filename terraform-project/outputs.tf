output "ec2_public_ip" {
  value = aws_instance.employee_server.public_ip
}
output "bucket_name" {
  value = aws_s3_bucket.employee_bucket.bucket
}