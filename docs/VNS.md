# Vault Namespace Specification (VNS) v1.1

## 1. Структура пути

Стандартная структура пути для хранения секретов в Vault:

```
kv/data/<environment>/<client>/<integration>/<resource>
```

- **environment**: Среда развертывания (`dev`, `staging`, `prod`).
- **client**: Имя клиента или проекта.
- **integration**: Название интегрированной системы.
- **resource**: Тип секрета.

## 2. Примеры

- `kv/data/prod/clientA/github/token`
- `kv/data/dev/clientB/google/service_account`

## 3. Поддерживаемые интеграции и ресурсы

Полный список поддерживаемых интеграций и их ресурсов см. в файле [Integrations.md](Integrations.md).
