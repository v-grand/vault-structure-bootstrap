# Guide: Jira Credentials

This guide explains how to obtain the required credentials for the Jira Cloud API.

## Required Secrets

-   `api_token`
-   `email`
-   `base_url`

## Instructions

### 1. Base URL

The `base_url` is the URL of your Jira Cloud instance.

-   **Example**: `https://your-company.atlassian.net`

### 2. Email

This is the email address of the Atlassian account you will use for authentication.

### 3. API Token

Jira Cloud uses API tokens for basic authentication, which is more secure than using your password.

-   **Official Documentation**: [Atlassian Support: Manage API tokens](https://support.atlassian.com/atlassian-account/docs/manage-api-tokens-for-your-atlassian-account/)

-   **Steps**:
    1.  Log in to [id.atlassian.com/manage-profile/security/api-tokens](https://id.atlassian.com/manage-profile/security/api-tokens) with your Atlassian account.
    2.  Click **Create API token**.
    3.  Give the token a descriptive label (e.g., "Vault-Integration").
    4.  Click **Create**.
    5.  Copy the token value immediately. It will not be shown again. This is your `api_token`.
