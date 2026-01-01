# Интеграции

В этом разделе перечислены поддерживаемые интеграции и их структура ресурсов.

## Cloud Providers

### AWS
- `aws/aws_access_key_id`
- `aws/aws_secret_access_key`
- `aws/iam_role_arn`
- `aws/region`
- `aws/session_token`

### GCP
- `gcp/service_account_key_json`
- `gcp/project_id`

### Azure
- `azure/client_id`
- `azure/client_secret`
- `azure/tenant_id`
- `azure/subscription_id`

## DevOps / Infrastructure

### Terraform
- `terraform/cloud_token`

### Cloudflare
- `cloudflare/api_token`
- `cloudflare/zone_id`

### GitHub
- `github/personal_access_token`
- `github/app_id`
- `github/private_key`
- `github/webhook_secret`

### GitLab
- `gitlab/token`

### Docker Hub
- `dockerhub/username`
- `dockerhub/password`

## CRM / Ads / Marketing

### HubSpot
- `hubspot/private_app_token`

### Google
- `google/client_id`
- `google/client_secret`
- `google/refresh_token`

### Google Ads
- `google_ads/developer_token`
- `google_ads/client_id`
- `google_ads/client_secret`
- `google_ads/refresh_token`

### Facebook Ads
- `facebook_ads/access_token`
- `facebook_ads/app_secret`
- `facebook_ads/app_id`

### TikTok Ads
- `tiktok_ads/access_token`
- `tiktok_ads/advertiser_id`
- `tiktok_ads/app_id`
- `tiktok_ads/secret`

## Communication / Messaging

### Telegram
- `telegram/bot_token`

### Discord
- `discord/bot_token`
- `discord/application_id`

### Slack
- `slack/bot_token`
- `slack/signing_secret`

### Gmail
- `gmail/client_id`
- `gmail/client_secret`
- `gmail/refresh_token`

## Project Management

### Jira
- `jira/api_token`
- `jira/email`
- `jira/base_url`

### Linear
- `linear/api_key`

### Notion
- `notion/api_key`

## Payments

### Stripe
- `stripe/secret_key`
- `stripe/webhook_secret`

### PayPal
- `paypal/client_id`
- `paypal/client_secret`

## AI Providers

### OpenAI
- `openai/api_key`

### Anthropic
- `anthropic/api_key`

### Google Vertex AI
- `vertex_ai/service_account_key_json`
- `vertex_ai/project_id`
- `vertex_ai/region`

### HuggingFace
- `huggingface/api_token`
