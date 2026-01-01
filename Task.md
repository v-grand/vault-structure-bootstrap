Автоматическое развёртывание структуры Vault по стандарту VNS v1.0
1. Цель проекта
Создать репозиторий, который автоматически разворачивает стандартизированную, масштабируемую структуру HashiCorp Vault для модульной бизнес‑фабрики.
Структура должна соответствовать Vault Namespace Specification (VNS v1.0) и поддерживать:

горизонтальное масштабирование

многоклиентскую архитектуру

многосредовую архитектуру (dev/staging/prod)

автоматический онбординг клиентов

автоматическое создание путей для интеграций

безопасное хранение секретов

2. Функциональные требования
2.1. Репозиторий должен содержать:
1) Terraform‑модуль
/terraform/vault-structure

Функции:

создание базовой структуры Vault:

Код
kv/data/<environment>/<client>/<integration>/<resource>
создание политик ACL

создание ролей

создание токенов для сервисов (n8n, CI/CD)

создание namespace (если Vault Enterprise)

2) CLI‑утилиту (Python или Go)
/cli/vault-bootstrap

Функции:

онбординг нового клиента

создание путей для интеграций

загрузка секретов из JSON/YAML

валидация структуры

dry‑run режим

3) Makefile
make init, make apply, make onboard-client, make validate

4) Документацию
/docs/VNS.md — стандарт структуры
/docs/Onboarding.md — как добавлять клиента
/docs/Integrations.md — список поддерживаемых интеграций

3. Структура репозитория
Код
vault-structure-bootstrap/
│
├── terraform/
│   └── vault-structure/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── policies/
│       │   ├── prod.hcl
│       │   ├── staging.hcl
│       │   └── dev.hcl
│       └── templates/
│           └── secret-path.tpl
│
├── cli/
│   └── vault-bootstrap/
│       ├── main.py (или main.go)
│       ├── commands/
│       │   ├── onboard_client.py
│       │   ├── create_integration.py
│       │   └── validate.py
│       └── utils/
│           └── vault_client.py
│
├── examples/
│   ├── clientA.json
│   └── integrations.yaml
│
├── Makefile
└── docs/
    ├── VNS.md
    ├── Onboarding.md
    └── Integrations.md
4. Требования к Terraform‑модулю
4.1. Входные параметры
hcl
variable "environments" {
  type = list(string)
  default = ["dev", "staging", "prod"]
}

variable "clients" {
  type = list(string)
}

variable "integrations" {
  type = list(string)
  default = ["github", "google", "hubspot", "telegram"]
}

variable "resources" {
  type = list(string)
  default = ["token", "api_key", "service_account", "credentials"]
}
4.2. Выходные параметры
список созданных путей

список политик

список ролей

4.3. Функциональность
Terraform должен:

создать KV‑engine (если не создан)

создать дерево путей:

Код
kv/data/<env>/<client>/<integration>/<resource>
создать ACL‑политики:

Код
n8n-prod → read prod/*
n8n-staging → read staging/*
n8n-dev → read dev/*
создать роли:

Код
role-n8n-prod
role-n8n-staging
role-n8n-dev
5. Требования к CLI‑утилите
5.1. Команда: onboard-client
Код
vault-bootstrap onboard-client --client clientA --env prod
Создаёт:

Код
prod/clientA/github/
prod/clientA/google/
prod/clientA/hubspot/
prod/clientA/telegram/
5.2. Команда: add-integration
Код
vault-bootstrap add-integration --client clientA --env prod --integration stripe
5.3. Команда: upload-secret
Код
vault-bootstrap upload-secret --path prod/clientA/google/service_account --file sa.json
5.4. Команда: validate
Проверяет:

корректность структуры

наличие всех обязательных путей

корректность JSON‑формата секретов

6. Нефункциональные требования
✔ Репозиторий должен быть полностью IaC (Infrastructure as Code)
✔ Код должен быть идемпотентным
✔ Поддержка GitHub Actions для CI
✔ Поддержка dry‑run
✔ Логи в JSON‑формате
✔ Документация в Markdown
7. Минимальный MVP
Terraform‑модуль, создающий структуру Vault

CLI‑команда onboard-client

Документация VNS.md

Makefile

8. Расширения (v1.1, v1.2)
генерация GitHub‑секретов автоматически

интеграция с Google Secret Manager

интеграция с AWS Secrets Manager

автоматическая ротация ключей

интеграция с CI/CD (GitHub Actions)
