Дополнительное ТЗ: Базовая структура секретов для всех интеграций
(расширение VNS v1.0 → VNS v1.1)
Цель: автоматически создать единое дерево секретов для всех стандартных интеграций, используемых в модульной фабрике.

1. Список интеграций, которые должны быть поддержаны из коробки
🔹 Cloud Providers
GCP

AWS

Azure (опционально, но лучше сразу заложить)

🔹 DevOps / Infrastructure
Terraform

Cloudflare

GitHub

GitLab (опционально)

Docker Hub (опционально)

🔹 CRM / Marketing / Ads
HubSpot

Google Ads

Facebook Ads

TikTok Ads

🔹 Communication / Messaging
Telegram

Discord

Slack

Gmail

🔹 Project Management
Jira

Linear (опционально)

Notion (опционально)

🔹 Payments (опционально)
Stripe

PayPal

🔹 AI Providers (опционально)
OpenAI

Anthropic

Google Vertex AI

HuggingFace

2. Требования к структуре Vault для всех интеграций
Каждая интеграция должна иметь единый формат хранения:

Код
kv/data/<environment>/<client>/<integration>/<resource>
3. Базовая структура для всех интеграций
Ниже — полный список директорий, которые должны создаваться автоматически при онбординге клиента.

3.1. Cloud Providers
GCP
Код
gcp/
  service_account
  credentials
  project
AWS
Код
aws/
  access_key
  secret_key
  iam_role
Azure
Код
azure/
  client_id
  client_secret
  tenant_id
  subscription_id
3.2. DevOps / Infrastructure
Terraform
Код
terraform/
  cloud_token
  backend_credentials
Cloudflare
Код
cloudflare/
  api_token
  zone_id
GitHub
Код
github/
  token
  app_id
  private_key
GitLab
Код
gitlab/
  token
Docker Hub
Код
dockerhub/
  username
  password
3.3. CRM / Ads / Marketing
HubSpot
Код
hubspot/
  api_key
  private_app_token
Google Ads
Код
google_ads/
  developer_token
  client_id
  client_secret
  refresh_token
Facebook Ads
Код
facebook_ads/
  access_token
  app_secret
TikTok Ads
Код
tiktok_ads/
  access_token
  advertiser_id
3.4. Communication / Messaging
Telegram
Код
telegram/
  bot_token
Discord
Код
discord/
  bot_token
  application_id
Slack
Код
slack/
  bot_token
  signing_secret
Gmail
Код
gmail/
  client_id
  client_secret
  refresh_token
3.5. Project Management
Jira
Код
jira/
  api_token
  email
  base_url
Linear
Код
linear/
  api_key
Notion
Код
notion/
  api_key
3.6. Payments
Stripe
Код
stripe/
  secret_key
  webhook_secret
PayPal
Код
paypal/
  client_id
  client_secret
3.7. AI Providers
OpenAI
Код
openai/
  api_key
Anthropic
Код
anthropic/
  api_key
Google Vertex AI
Код
vertex_ai/
  service_account
HuggingFace
Код
huggingface/
  api_token
4. Требования к Terraform‑модулю
Terraform должен:

✔ Автоматически создавать структуру:
Код
kv/data/<env>/<client>/<integration>/<resource>
✔ Поддерживать список интеграций через переменную:
hcl
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
✔ Поддерживать ресурсы:
hcl
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
5. Требования к CLI‑утилите
Команда: onboard-client
Создаёт структуру:

Код
<env>/<client>/<integration>/<resource>
Команда: add-integration
Добавляет новую интеграцию клиенту.

Команда: list-integrations
Показывает, какие интеграции доступны.

Команда: validate
Проверяет:

корректность структуры

наличие всех обязательных ресурсов

отсутствие пустых секретов

6. Итог
Мы получили:

полный список интеграций

полный список ресурсов

структуру Vault

требования к Terraform

требования к CLI

расширение стандарта VNS v1.1