# Guide: Discord Credentials

This guide explains how to obtain the required credentials for a Discord Bot integration.

## Required Secrets

-   `bot_token`
-   `application_id`

## Instructions

### 1. Create a Discord Application

All bots are managed through the Discord Developer Portal.

-   **Official Documentation**: [Discord Developer Portal](https://discord.com/developers/applications)

-   **Steps**:
    1.  Log in to the Discord Developer Portal.
    2.  Click **New Application** in the top-right corner.
    3.  Give your application a name and click **Create**.

### 2. Get Application ID

-   **Steps**:
    -   On the **General Information** page of your new application, you will see the `application_id`. Copy this value.

### 3. Create a Bot and Get the Token

-   **Steps**:
    1.  In your application's settings, navigate to the **Bot** tab in the left sidebar.
    2.  Click **Add Bot**.
    3.  Under the bot's username, you will see a section for the token. Click **Reset Token** (or **View Token** if available).
    4.  You may need to enter a 2FA code.
    5.  Copy the `bot_token` value immediately. It will not be shown again.

### 4. Invite the Bot to a Server

A bot can't do anything until it's invited to a server.

-   **Steps**:
    1.  Go to the **OAuth2** -> **URL Generator** tab.
    2.  In the "Scopes" section, check the `bot` scope.
    3.  In the "Bot Permissions" section that appears, select the permissions your bot needs (e.g., `Send Messages`, `Read Message History`).
    4.  Copy the generated URL at the bottom of the page.
    5.  Paste the URL into your browser, select a server to invite the bot to, and authorize it.
