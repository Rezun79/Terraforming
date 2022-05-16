test = module.kayvault.secret_value
output "test" {
  value = var.test
  sensitive = false
}