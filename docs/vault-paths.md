# Vault Secret Paths Structure

This document outlines the recommended and enforced structure for secrets within HashiCorp Vault for the automated business factory. This structure ensures consistency, manageability, and proper access control across all modules, services, and projects.

## Base Path

All secrets are stored under the `secret/data/` path (assuming KV Secrets Engine v2).

## Top-Level Categories

-   `/modules/`: Secrets specific to individual functional modules.
-   `/services/`: Secrets for external services or integrations used across multiple modules/projects.
-   `/projects/`: Secrets specific to a particular business project or client.

## Detailed Structure

### `secret/data/modules/<module-name>/`

Secrets directly related to a specific module's operation.

*   `secret/data/modules/my-new-module/config`
*   `secret/data/modules/my-new-module/api-keys`

### `secret/data/services/<service-name>/`

Secrets for shared external services.

*   `secret/data/services/google-drive/credentials`
*   `secret/data/services/telegram/bot-tokens`
*   `secret/data/services/github/access-tokens`

### `secret/data/projects/<project-name>/<module-name>/`

Secrets specific to a module within a particular business project.

*   `secret/data/projects/client-a/crm-integration/api-key`
*   `secret/data/projects/client-b/reporting-module/db-credentials`

## Best Practices

-   **Least Privilege**: Policies should grant only the necessary access to specific paths.
-   **Dynamic Secrets**: Where possible, use Vault's dynamic secrets engines (e.g., for databases, cloud credentials) instead of static secrets.
-   **Versioning**: Leverage KV v2's secret versioning for auditability and rollback.
-   **Automation**: Use n8n workflows to automate the creation, rotation, and management of secrets.
