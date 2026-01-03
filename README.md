# vault-structure-bootstrap

This repository defines the foundational structure for secrets within HashiCorp Vault for the automated business factory. It provides empty directories, policy templates, and KV structure templates to ensure a consistent and manageable secret management system.

## Contents

-   `modules/`: Placeholder directory for module-specific secrets.
-   `services/`: Placeholder directory for service-specific secrets.
-   `projects/`: Placeholder directory for project-specific secrets.
-   `policies/`: Contains template HCL files for Vault policies.
    -   `template-policy.hcl`: A generic template for creating new Vault policies.
-   `kv-templates/`: Contains JSON files defining the structure for Key-Value secrets.
    -   `service-template.json`: Template for a generic service's secrets.
    -   `module-template.json`: Template for a generic module's secrets.
-   `docs/vault-paths.md`: Documentation detailing the recommended Vault secret path structure.

## Purpose

The primary purpose of this submodule is to:

1.  **Establish a Standardized Structure**: Provide a clear, organized hierarchy for storing secrets.
2.  **Facilitate Automation**: Serve as a blueprint for n8n workflows to automatically create secret paths and apply policies.
3.  **Ensure Consistency**: Promote best practices for secret management across the entire factory.

## Usage

This submodule is primarily consumed by n8n workflows (e.g., `Module.SyncSecrets`) and Terraform modules to interact with Vault in a structured manner. The templates provided here can be used as a basis for creating actual secrets and policies within a running Vault instance.

## Future Enhancements

-   More comprehensive policy templates for various access patterns.
-   Integration with Vault's API for automated template application.
-   Pre-defined secret structures for common integrations (e.g., AWS, GCP, Azure credentials).
