# Guide: Google (Generic OAuth 2.0) Credentials

This guide explains how to obtain standard OAuth 2.0 credentials from the Google Cloud Console, which can be used for various Google APIs.

## Required Secrets

-   `client_id`
-   `client_secret`
-   `refresh_token`

## Instructions

### 1. Client ID and Client Secret

These credentials are created within a GCP project.

-   **Official Documentation**: [Google Cloud Docs: Setting up OAuth 2.0](https://support.google.com/cloud/answer/6158849)

-   **Steps**:
    1.  Go to the [Credentials page](https://console.cloud.google.com/apis/credentials) in the Google Cloud Console.
    2.  Click **Create Credentials** -> **OAuth client ID**.
    3.  Select the **Application type** (e.g., "Web application").
    4.  Give it a name.
    5.  Under **Authorized redirect URIs**, add the URI where you will handle the OAuth callback (e.g., `https://n8n.example.com/rest/oauth2-credential/callback`).
    6.  Click **Create**.
    7.  A dialog will appear showing your `client_id` and `client_secret`. Copy them.

### 2. Refresh Token

A `refresh_token` is obtained after a user successfully completes the OAuth 2.0 consent flow for the first time. It is long-lived and can be used to generate new, short-lived access tokens.

-   **Process**:
    1.  Your application must redirect the user to Google's OAuth 2.0 consent screen, passing your `client_id` and requested scopes.
    2.  After the user grants permission, Google redirects them back to your specified redirect URI with an authorization `code`.
    3.  Your application's backend then exchanges this `code` (along with your `client_id` and `client_secret`) for an `access_token` and a `refresh_token`.
    4.  The `refresh_token` is the value you should store in Vault.
-   **Tool for Generation**: For services like n8n, this flow is built-in. When you create a new Google API credential in n8n, it will guide you through the consent screen and automatically store the resulting refresh token.
