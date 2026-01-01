# Guide: Azure Credentials

This guide explains how to obtain the required credentials for the Microsoft Azure integration. These are typically used for authenticating an application via a Service Principal.

## Required Secrets

-   `client_id`
-   `client_secret`
-   `tenant_id`
-   `subscription_id`

## Instructions

### 1. Create an App Registration / Service Principal

The standard way to authenticate applications in Azure is to register them in Azure Active Directory (Azure AD). This process creates a "Service Principal" for your application.

-   **Official Documentation**: [Azure Docs: Create a service principal](https://docs.microsoft.com/azure/active-directory/develop/howto-create-service-principal-portal)

-   **Steps**:
    1.  Navigate to the **Azure Active Directory** service in the Azure portal.
    2.  Go to **App registrations** and click **New registration**.
    3.  Give your application a name (e.g., "My Vault-Enabled App").
    4.  Choose the supported account types (usually the default is fine).
    5.  Click **Register**.

### 2. Get the IDs

Once the app is registered, you can retrieve most of the required IDs from the "Overview" page of the app registration:

-   **`client_id`**: This is the **Application (client) ID**.
-   **`tenant_id`**: This is the **Directory (tenant) ID**.
-   **`subscription_id`**: You can find this on the "Overview" page of any of your Azure services or by searching for "Subscriptions" in the portal.

### 3. Create a Client Secret

The `client_secret` is the "password" for your application.

-   **Steps**:
    1.  In your app registration, go to the **Certificates & secrets** page.
    2.  Click **New client secret**.
    3.  Give it a description and choose an expiration period.
    4.  **Important**: Copy the secret's **Value** immediately. It will not be shown again. This is your `client_secret`.
