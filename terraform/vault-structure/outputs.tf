output "created_paths" {
  description = "List of all created secret paths."
  value       = keys(vault_generic_secret.secrets)
}

output "n8n_approle_info" {
  description = "Information required to configure n8n authentication."
  value = {
    for env in var.environments :
    "n8n_${env}_role" => {
      "role_id" = vault_approle_auth_backend_role.n8n_roles[env].role_id,
      "secret_id_accessor_path" = "auth/approle/role/n8n-${env}-role/secret-id"
      "comment" = "To generate a SecretID, run: vault write -f ${"auth/approle/role/n8n-${env}-role/secret-id"}"
    }
  }
  sensitive = true # Contains sensitive info like RoleID
}
