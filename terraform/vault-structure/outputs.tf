output "created_paths" {
  value = keys(vault_generic_secret.secrets)
}
