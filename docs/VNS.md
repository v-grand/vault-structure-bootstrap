# Vault Namespace Specification (VNS) v1.0

## 1. Структура пути

Стандартная структура пути для хранения секретов в Vault:

```
kv/data/<environment>/<client>/<integration>/<resource>
```

- **environment**: Среда развертывания (`dev`, `staging`, `prod`).
- **client**: Имя клиента или проекта.
- **integration**: Название интегрированной системы (`github`, `google`, `hubspot`, `telegram` и т.д.).
- **resource**: Тип секрета (`token`, `api_key`, `service_account`, `credentials` и т.д.).

## 2. Примеры

- `kv/data/prod/clientA/github/token`
- `kv/data/dev/clientB/google/service_account`
