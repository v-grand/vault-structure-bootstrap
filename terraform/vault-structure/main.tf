resource "vault_mount" "kv" {
  path = "kv"
  type = "kv-v2"
}

locals {
  paths = flatten([
    for env in var.environments : [
      for client in var.clients : [
        for integration in var.integrations : [
          for resource in var.resources :
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
