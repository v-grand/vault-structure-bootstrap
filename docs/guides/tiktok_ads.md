# Guide: TikTok Ads Credentials

This guide explains how to obtain the required credentials for the TikTok Marketing API.

## Required Secrets

-   `access_token`
-   `advertiser_id`
-   `app_id`
-   `secret`

## Instructions

### 1. Create a TikTok Developer App

-   **Official Documentation**: [TikTok Marketing API Docs: Get Started](https://ads.tiktok.com/marketing_api/docs?id=1739940694111233)

-   **Steps**:
    1.  Log in to your TikTok Ads Manager account.
    2.  Go to **Tools** > **Developer Center**.
    3.  Click **Create App**.
    4.  Fill in the application details.
    5.  Once created, your `app_id` and `secret` will be available on the app's dashboard.

### 2. Advertiser ID

-   **Steps**:
    1.  The `advertiser_id` is the ID of the ad account you want to manage.
    2.  You can find this ID in the URL of your TikTok Ads Manager dashboard (it's the long number after `a=`).

### 3. Access Token

The access token is generated via an OAuth 2.0 flow.

-   **Process**:
    1.  You need to generate an authentication URL, redirect a user to it, and handle the callback to get an `auth_code`.
    2.  This `auth_code` is then exchanged for a long-lived `access_token`.
    -   **For automated systems**, you can often do this once manually to get the initial token. Follow the "Self-Service" steps in the TikTok documentation.
    -   **For tools like n8n**, the credential creation process will handle this flow for you.
