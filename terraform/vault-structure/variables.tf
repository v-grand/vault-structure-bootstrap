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
    "hubspot", "google", "google_ads", "facebook_ads", "tiktok_ads",
    "telegram", "discord", "slack", "gmail",
    "jira", "linear", "notion",
    "stripe", "paypal",
    "openai", "anthropic", "vertex_ai", "huggingface"
  ]
}

variable "resources" {
  type = map(list(string))
  default = {
    # Cloud Providers
    aws          = ["aws_access_key_id", "aws_secret_access_key", "iam_role_arn", "region", "session_token"]
    gcp          = ["service_account_key_json", "project_id"]
    azure        = ["client_id", "client_secret", "tenant_id", "subscription_id"]

    # DevOps / Infrastructure
    terraform    = ["cloud_token"]
    cloudflare   = ["api_token", "zone_id"]
    github       = ["personal_access_token", "app_id", "private_key", "webhook_secret"]
    gitlab       = ["token"]
    dockerhub    = ["username", "password"]

    # CRM / Ads / Marketing
    hubspot      = ["private_app_token"]
    google       = ["client_id", "client_secret", "refresh_token"]
    google_ads   = ["developer_token", "client_id", "client_secret", "refresh_token"]
    facebook_ads = ["access_token", "app_secret", "app_id"]
    tiktok_ads   = ["access_token", "advertiser_id", "app_id", "secret"]

    # Communication / Messaging
    telegram     = ["bot_token"]
    discord      = ["bot_token", "application_id"]
    slack        = ["bot_token", "signing_secret"]
    gmail        = ["client_id", "client_secret", "refresh_token"]

    # Project Management
    jira         = ["api_token", "email", "base_url"]
    linear       = ["api_key"]
    notion       = ["api_key"]

    # Payments
    stripe       = ["secret_key", "webhook_secret"]
    paypal       = ["client_id", "client_secret"]

    # AI Providers (Revised)
    openai       = ["api_key"]
    anthropic    = ["api_key"]
    vertex_ai    = ["service_account_key_json", "project_id", "region"]
    huggingface  = ["api_token"]
  }
}
