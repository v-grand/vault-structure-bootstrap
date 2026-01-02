# Guide: Telegram Credentials

This guide explains how to obtain the required credentials for the Telegram integration.

## Required Secrets

-   `bot_token`

## Instructions

### 1. Bot Token

The `bot_token` is the credential used to control a Telegram Bot. It is provided by the "BotFather," which is a special bot on Telegram used to manage all other bots.

-   **Official Link**: Talk to [@BotFather](https://t.me/BotFather)

-   **Steps**:
    1.  Open Telegram and start a chat with the user `@BotFather`.
    2.  Send the `/newbot` command.
    3.  Follow the instructions:
        -   First, provide a friendly name for your bot (e.g., "My Project Bot").
        -   Second, provide a unique username for your bot, which must end in `bot` (e.g., `my_project_123_bot`).
    4.  If the username is available, the BotFather will reply with a message containing your `bot_token`.
    5.  Copy this token and store it securely in Vault.
