# Allow read-only access to all secrets in the 'dev' environment for n8n
path "kv/data/dev/*" {
  capabilities = ["read"]
}

# Allow listing existing secrets (optional but useful for discovery)
path "kv/metadata/dev/*" {
  capabilities = ["list"]
}
