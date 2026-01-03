# This is a template for a Vault policy.
# It can be used by n8n workflows to dynamically generate and apply policies
# for new modules, services, or projects.

# Example: Read-only access to a specific secret path
# path "secret/data/{{ .Service }}/{{ .Module }}/*" {
#   capabilities = ["read", "list"]
# }

# Example: Write access to a specific secret path
# path "secret/data/{{ .Service }}/{{ .Module }}/config" {
#   capabilities = ["create", "update"]
# }
