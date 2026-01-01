variable "environments" {
  type    = list(string)
  default = ["dev", "staging", "prod"]
}

variable "clients" {
  type = list(string)
}

variable "integrations" {
  type    = list(string)
  default = ["github", "google", "hubspot", "telegram"]
}

variable "resources" {
  type    = list(string)
  default = ["token", "api_key", "service_account", "credentials"]
}
