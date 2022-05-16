output "test" {
  value = module.kayvault.secret_value
  sensitive = false
}