# Enable KV-v2 secrets engine
resource "vault_mount" "kv" {
  path = "kv"
  type = "kv-v2"
}

# Create all secret paths
locals {
  paths = flatten([
    for env in var.environments : [
      for client in var.clients : [
        for integration in var.integrations : [
          for resource in var.resources[integration] :
          format("%s/%s/%s/%s", env, client, integration, resource)
        ]
      ]
    ]
  ])
}

resource "vault_generic_secret" "secrets" {
  for_each = toset(local.paths)
  path     = "kv/data/${each.key}"
  data_json = jsonencode(
    {
      "data" = {}
    }
  )
}

# --- n8n AppRole Authentication ---

# 1. Enable AppRole auth method
resource "vault_auth_backend" "approle" {
  type = "approle"
}

# 2. Create policies for each environment
resource "vault_policy" "n8n_policies" {
  for_each = toset(var.environments)
  name     = "n8n-${each.key}"
  policy   = file("${path.module}/policies/n8n-${each.key}.hcl")
}

# 3. Create a role for each environment
resource "vault_approle_auth_backend_role" "n8n_roles" {
  for_each     = toset(var.environments)
  backend      = vault_auth_backend.approle.path
  role_name    = "n8n-${each.key}-role"
  token_policies = [vault_policy.n8n_policies[each.key].name]

  # Security best practices
  token_ttl      = "1h"  # Short-lived tokens
  token_max_ttl  = "4h"
  secret_id_ttl  = "10m" # SecretID for initial auth is short-lived
  secret_id_num_uses = 1 # Can only be used once to get a token
}
