# Guide: Google Ads Credentials

This guide explains how to obtain the required credentials for the Google Ads API.

## Required Secrets

-   `developer_token`
-   `client_id`
-   `client_secret`
-   `refresh_token`

## Instructions

### 1. Developer Token

You need a Google Ads manager account to apply for a developer token.

-   **Official Documentation**: [Google Ads API Docs: Obtain a Developer Token](https://developers.google.com/google-ads/api/docs/first-call/dev-token)

-   **Steps**:
    1.  Log in to your Google Ads manager account.
    2.  Navigate to **Tools & Settings** > **API Center**.
    3.  The API Center page will show your developer token.

### 2. Client ID and Client Secret

These are standard OAuth 2.0 credentials created in the Google Cloud Console.

-   **Official Documentation**: [Google Ads API Docs: Create a Client ID and Client Secret](https://developers.google.com/google-ads/api/docs/first-call/oauth-cloud-project)

-   **Steps**:
    1.  Follow the same process as the [Generic Google OAuth Guide](google.md#1-client-id-and-client-secret).
    2.  Ensure the **Google Ads API** is enabled in your GCP project.

### 3. Refresh Token

A refresh token is generated through an OAuth 2.0 flow.

-   **Official Documentation**: [Google Ads API Docs: Generate a Refresh Token](https://developers.google.com/google-ads/api/docs/first-call/oauth-manual)

-   **Process**:
    -   Since this is often a one-time setup for a backend application, Google provides instructions for generating a refresh token using a command-line script or a web flow.
    -   Follow the official documentation closely, as it requires downloading a client secrets file and running a script. The output of this process will be the `refresh_token` to store in Vault.
