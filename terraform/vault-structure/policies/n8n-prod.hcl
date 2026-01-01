# Allow read-only access to all secrets in the 'prod' environment for n8n
path "kv/data/prod/*" {
  capabilities = ["read"]
}

# Allow listing existing secrets (optional but useful for discovery)
path "kv/metadata/prod/*" {
  capabilities = ["list"]
}
