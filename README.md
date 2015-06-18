rocketbot
========

A bot for our Slack team chat based off of [Slackey](https://github.com/mcmahoniel/slackey).

rocketbot will watch for new users to join and automatically greet them. Additionally, you can set up a slash command to get back general information.

### Installation:
- Fork the project!
- Generate a bot integration at `yourteam.slack.com/services` and note the API token it generates.
- Set your environment variables; `slack_api_token` must be set before the app will launch. You can use Figaro locally, using `config/application.yml` to store your key.
- Edit the greeting for your team in `config/initializers/slack_api.rb`.
- You can also set up a slash command integration at `yourteam.slack.com/services`. Point it to `http://yourapp.com/slack_command`.
- You can configure the text to be returned in `lib/slack_responder/command_handler.rb`.
