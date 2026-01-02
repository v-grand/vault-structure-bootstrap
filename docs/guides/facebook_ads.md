# Guide: Facebook Ads Credentials

This guide explains how to obtain the required credentials for the Facebook Marketing API.

## Required Secrets

-   `access_token`
-   `app_secret`
-   `app_id`

## Instructions

### 1. Create a Facebook App

All credentials are tied to a Facebook App.

-   **Official Documentation**: [Facebook Marketing API Docs: Get Started](https://developers.facebook.com/docs/marketing-api/get-started)

-   **Steps**:
    1.  Go to the [Facebook for Developers](https://developers.facebook.com/) portal.
    2.  Click **My Apps** -> **Create App**.
    3.  Select "Business" as the app type.
    4.  Provide an app name and contact email.
    5.  Connect it to your Facebook Business Manager account if applicable.
    6.  Click **Create App**.

### 2. Get App ID and App Secret

-   **Steps**:
    1.  From your app's dashboard, navigate to **Settings** > **Basic**.
    2.  The `app_id` is displayed at the top of the page.
    3.  The `app_secret` is also displayed. You may need to click "Show" and re-enter your password to view it.

### 3. Generate an Access Token

You need a User Access Token with the `ads_management` permission.

-   **Steps**:
    1.  From your app's dashboard, navigate to **Tools** > **Graph API Explorer**.
    2.  In the "User or Page" dropdown, select **Get User Access Token**.
    3.  In the modal that appears, select the `ads_management` permission.
    4.  Click **Generate Access Token**.
    5.  The token generated is short-lived. To get a long-lived token, click the "i" icon next to the token, then click **Open in Access Token Debugger**.
    6.  In the debugger, click the **Extend Access Token** button at the bottom. The new, long-lived token is what you should store in Vault.
