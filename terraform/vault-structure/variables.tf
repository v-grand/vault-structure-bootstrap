variable "environments" {
  type    = list(string)
  default = ["dev", "staging", "prod"]
}

variable "clients" {
  type = list(string)
}

variable "integrations" {
  type = list(string)
  default = [
    "gcp", "aws", "azure",
    "terraform", "cloudflare", "github", "gitlab", "dockerhub",
    "hubspot", "google_ads", "facebook_ads", "tiktok_ads",
    "telegram", "discord", "slack", "gmail",
    "jira", "linear", "notion",
    "stripe", "paypal",
    "openai", "anthropic", "vertex_ai", "huggingface"
  ]
}

variable "resources" {
  type = map(list(string))
  default = {
    gcp          = ["service_account", "credentials", "project"]
    aws          = ["access_key", "secret_key", "iam_role"]
    azure        = ["client_id", "client_secret", "tenant_id", "subscription_id"]
    terraform    = ["cloud_token", "backend_credentials"]
    cloudflare   = ["api_token", "zone_id"]
    github       = ["token", "app_id", "private_key"]
    gitlab       = ["token"]
    dockerhub    = ["username", "password"]
    hubspot      = ["api_key", "private_app_token"]
    google_ads   = ["developer_token", "client_id", "client_secret", "refresh_token"]
    facebook_ads = ["access_token", "app_secret"]
    tiktok_ads   = ["access_token", "advertiser_id"]
    telegram     = ["bot_token"]
    discord      = ["bot_token", "application_id"]
    slack        = ["bot_token", "signing_secret"]
    gmail        = ["client_id", "client_secret", "refresh_token"]
    jira         = ["api_token", "email", "base_url"]
    linear       = ["api_key"]
    notion       = ["api_key"]
    stripe       = ["secret_key", "webhook_secret"]
    paypal       = ["client_id", "client_secret"]
    openai       = ["api_key"]
    anthropic    = ["api_key"]
    vertex_ai    = ["service_account"]
    huggingface  = ["api_token"]
  }
}
