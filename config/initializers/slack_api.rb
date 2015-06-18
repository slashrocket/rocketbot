require 'slack'

Slack.configure do |config|
  config.token = ENV['slack_api_token']
end

client = Slack.realtime

client.on :team_join do |data|
  welcome = "Welcome to slashrocket, <@#{data['user']['id']}>! Type `/rocket` for a quick tour of our channels. :simple_smile:"
  options = { channel: '#general', text: welcome, as_user: true }
  Slack.chat_postMessage(options)
end

Thread.new do
  client.start
end
