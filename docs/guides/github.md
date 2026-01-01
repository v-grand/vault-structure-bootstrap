# Guide: GitHub Credentials

This guide explains how to obtain the various credentials supported for the GitHub integration.

## Required Secrets

-   `personal_access_token`
-   `app_id`
-   `private_key`
-   `webhook_secret`

## Instructions

### 1. Personal Access Token (PAT)

A Personal Access Token is used to authenticate with the GitHub API on behalf of your own user account.

-   **Official Documentation**: [GitHub Docs: Creating a personal access token](https://docs.github.com/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
-   **Steps**:
    1.  Go to your GitHub **Settings** -> **Developer settings**.
    2.  Navigate to **Personal access tokens** -> **Tokens (classic)**.
    3.  Click **Generate new token**.
    4.  Give the token a name, set an expiration, and select the required scopes (permissions).
    5.  Click **Generate token** and copy the token value immediately.

### 2. GitHub App Credentials

For more complex or automated integrations, a GitHub App is the recommended approach.

-   **Official Documentation**: [GitHub Docs: Registering a GitHub App](https://docs.github.com/developers/apps/building-github-apps/registering-a-github-app)

#### `app_id`

-   **Steps**:
    1.  After registering your GitHub App, go to its settings page.
    2.  The `App ID` is displayed on the "General" tab.

#### `private_key`

-   **Steps**:
    1.  In your GitHub App's settings, scroll down to the "Private keys" section.
    2.  Click **Generate a private key**.
    3.  A `.pem` file will be downloaded. The content of this file is your `private_key`.

#### `webhook_secret`

-   **Steps**:
    1.  In your GitHub App's settings, go to the "General" tab.
    2.  Find the "Webhook" section.
    3.  Enter a long, random string into the **Webhook secret** field. This same string should be stored in Vault.
