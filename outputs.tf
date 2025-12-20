output "state_bucket" {
  description = "The state_bucket name"
  value       = local.state_bucket
}

output "logging_bucket" {
  description = "The logging_bucket name"
  value       = local.logging_bucket
}

output "dynamodb_table" {
  description = "The name of the dynamo db table"
  value       = var.dynamodb_table_name != null ? aws_dynamodb_table.terraform_state_lock[0].id : null
}
