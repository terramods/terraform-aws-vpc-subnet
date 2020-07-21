output "subnet_ids" {
  value = aws_subnet.tm_subnet[*].id
}