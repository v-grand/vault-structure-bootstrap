# Onboarding нового клиента

Для добавления нового клиента в Vault используется CLI-утилита `vault-bootstrap`.

## 1. Команда `onboard-client`

Команда `onboard-client` создает базовую структуру путей для нового клиента в указанной среде.

### Использование

```bash
vault-bootstrap onboard-client --client <client_name> --env <environment>
```

- **client_name**: Имя нового клиента.
- **environment**: Среда, в которой создается клиент (`dev`, `staging`, `prod`).

### Пример

```bash
vault-bootstrap onboard-client --client clientA --env prod
```

Эта команда создаст следующие пути:

```
prod/clientA/github/
prod/clientA/google/
prod/clientA/hubspot/
prod/clientA/telegram/
```
