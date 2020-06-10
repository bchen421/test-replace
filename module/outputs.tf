output "postgres_address" {
  value = aws_db_instance.postgres.address
}

output "postgres_port" {
  value = aws_db_instance.postgres.port
}

output "postgres_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

output "postgres_username" {
  value = aws_db_instance.postgres.username
}

output "postgres_database_name" {
  value = aws_db_instance.postgres.name
}

output "postgres_password" {
  value = var.password
}

output "postgres_id" {
  value = aws_db_instance.postgres.id
}
