# Guide: Slack Credentials

This guide explains how to obtain the required credentials for a Slack App integration.

## Required Secrets

-   `bot_token`
-   `signing_secret`

## Instructions

### 1. Create a Slack App

-   **Official Documentation**: [Slack API: Building a Slack App](https://api.slack.com/start/building)

-   **Steps**:
    1.  Go to the [Slack API site](https://api.slack.com/apps) and click **Create New App**.
    2.  Choose to build "From scratch".
    3.  Give your app a name and select the workspace where you'll develop it.
    4.  Click **Create App**.

### 2. Get the Signing Secret

The `signing_secret` is used to verify that incoming requests are genuinely from Slack.

-   **Steps**:
    1.  In your app's settings, navigate to the **Basic Information** page.
    2.  Scroll down to the **App Credentials** section.
    3.  The `Signing Secret` is displayed here. Click "Show" to reveal and copy it.

### 3. Get the Bot Token

The `bot_token` (an OAuth token) is used to make API calls on behalf of your bot.

-   **Steps**:
    1.  In your app's settings, navigate to the **OAuth & Permissions** page.
    2.  Scroll down to the **Scopes** section. Under **Bot Token Scopes**, add the permissions your bot needs (e.g., `chat:write`, `channels:read`).
    3.  Scroll back up to the top of the page and click **Install to Workspace**.
    4.  Follow the prompts to authorize the app.
    5.  After authorization, the page will refresh and display the **Bot User OAuth Token**. This is your `bot_token`. Copy it.
