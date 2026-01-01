# Guide: Google Cloud (GCP) Credentials

This guide explains how to obtain the required credentials for the Google Cloud Platform integration.

## Required Secrets

-   `service_account_key_json`
-   `project_id`

## Instructions

### 1. Service Account Key (JSON)

GCP uses a JSON file to store all the credentials for a service account. This entire file content should be stored as a single secret in Vault.

-   **Official Documentation**: [Google Cloud: Create and manage service account keys](https://cloud.google.com/iam/docs/creating-managing-service-account-keys)
-   **Steps**:
    1.  Navigate to the "Service Accounts" page in the Google Cloud Console.
    2.  Select your project.
    3.  Choose an existing service account or create a new one.
    4.  Go to the "Keys" tab for the service account.
    5.  Click "Add Key" -> "Create new key".
    6.  Select **JSON** as the key type and click "Create".
    7.  A JSON file will be downloaded to your computer. **This is your key.**
    8.  You will copy the entire content of this file and store it in the `service_account_key_json` secret path in Vault.

### 2. Project ID

The unique identifier for your Google Cloud project.

-   **Official Documentation**: [Google Cloud: Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
-   **Steps**:
    1.  Navigate to the Google Cloud Console dashboard.
    2.  The "Project info" card on the dashboard will display the `Project ID`.
