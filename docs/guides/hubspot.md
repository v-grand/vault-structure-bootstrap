# Guide: HubSpot Credentials

This guide explains how to obtain the required credentials for the HubSpot integration.

## Required Secrets

-   `private_app_token`

## Instructions

### 1. Private App Token

HubSpot's modern authentication method relies on Private Apps, which are more secure than legacy API keys.

-   **Official Documentation**: [HubSpot Knowledge Base: Private Apps](https://knowledge.hubspot.com/integrations/how-do-i-create-and-use-hubspot-private-apps)

-   **Steps**:
    1.  Log in to your HubSpot account.
    2.  Navigate to **Settings** (the gear icon in the main navigation bar).
    3.  In the left sidebar, go to **Integrations** > **Private Apps**.
    4.  Click **Create a private app**.
    5.  On the "Basic Info" tab, give your app a name and description.
    6.  Go to the **Scopes** tab and select the permissions your application needs.
    7.  Click **Create app**.
    8.  A dialog box will appear with your app's token. Click **Show token** and copy the value immediately.
