output "secret_value" {
  value = module.kayvault.secret_value
  sensitive = false
}