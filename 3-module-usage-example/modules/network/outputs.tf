output "main_vpc_id" {
  value = aws_vpc.main.id
  description = "The id of the main VPC"
}