# Allow read-only access to all secrets in the 'staging' environment for n8n
path "kv/data/staging/*" {
  capabilities = ["read"]
}

# Allow listing existing secrets (optional but useful for discovery)
path "kv/metadata/staging/*" {
  capabilities = ["list"]
}
