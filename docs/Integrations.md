# Интеграции

В этом разделе перечислены поддерживаемые интеграции и способы их добавления.

## 1. Поддерживаемые интеграции

По умолчанию поддерживаются следующие интеграции:

- `github`
- `google`
- `hubspot`
- `telegram`

## 2. Добавление новой интеграции

Для добавления новой интеграции для существующего клиента используется команда `add-integration`.

### Использование

```bash
vault-bootstrap add-integration --client <client_name> --env <environment> --integration <integration_name>
```

- **client_name**: Имя клиента.
- **environment**: Среда (`dev`, `staging`, `prod`).
- **integration_name**: Название новой интеграции.

### Пример

```bash
vault-bootstrap add-integration --client clientA --env prod --integration stripe
```
