rocketbot
========

A bot for our Slack team chat based off of [Slackey](https://github.com/mcmahoniel/slackey).

rocketbot will watch for new users to join and automatically greet them. Additionally, pointing Slack to POST to `http://yourapp.com/slack_command` will allow you to call `/command` and get back general information.

### Installation:
- Fork the project!
- Generate a bot integration at `yourteam.slack.com/services` and note the API token it generates.
- Set your environment variables; `slack_api_token` must be set before the app will launch.
- Edit the text for your team - `config/initializers/slack_api.rb` contains the new user greeting.
- If you would like to use the slash command, set up a slash command integration at `yourteam.slack.com/services`.
- You can configure the text to be returned in `lib/slack_responder/command_handler.rb`.
