# Guide: GitLab Credentials

This guide explains how to obtain the required credentials for the GitLab integration.

## Required Secrets

-   `token`

## Instructions

### 1. Personal Access Token

A Personal Access Token is used to authenticate with the GitLab API on behalf of your user account.

-   **Official Documentation**: [GitLab Docs: Personal access tokens](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html)

-   **Steps**:
    1.  Log in to your GitLab account.
    2.  In the top-right corner, click your avatar and select **Edit profile**.
    3.  In the left sidebar, select **Access Tokens**.
    4.  Enter a name and an optional expiry date for the token.
    5.  Select the desired scopes (permissions). For API access, you will likely need the `api` scope.
    6.  Click **Create personal access token**.
    7.  Copy the token value immediately. It will not be shown again.
