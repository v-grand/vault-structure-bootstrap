# Guide: Notion Credentials

This guide explains how to obtain the required credentials for the Notion API.

## Required Secrets

-   `api_key`

## Instructions

### 1. Create a Notion Integration

API keys are tied to "integrations" that you create.

-   **Official Documentation**: [Notion Developers: Create an integration](https://developers.notion.com/docs/create-a-notion-integration)

-   **Steps**:
    1.  Go to the [My Integrations](https://www.notion.so/my-integrations) page in your Notion workspace.
    2.  Click **New integration**.
    3.  Give your integration a name and associate it with a workspace.
    4.  Choose the desired capabilities.
    5.  Click **Submit**.

### 2. Get the API Key (Internal Integration Token)

-   **Steps**:
    1.  Once the integration is created, you will be taken to its settings page.
    2.  Under the **Secrets** tab, you will find the **Internal Integration Token**.
    3.  Click **Show** and copy the token. This is your `api_key`.

### 3. Share a Page with Your Integration

An integration can only access pages that have been explicitly shared with it.

-   **Steps**:
    1.  Go to any Notion page you want the integration to access.
    2.  Click the **Share** button in the top-right corner.
    3.  Use the search box to find your integration by name and click **Invite**.
    4.  The integration will now have the permissions you granted it for that page and its sub-pages.
