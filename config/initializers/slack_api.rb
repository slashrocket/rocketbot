require 'slack'

Slack.configure do |config|
  config.token = ENV['slack_api_token']
end

client = Slack::RealTime::Client.new

client.on :team_join do |data|
  puts "New User, #{data['user']['name']}, Joined"
  welcome = "Welcome to slashrocket, <@#{data['user']['id']}>! Type `/rocket` for a quick tour of our channels. :simple_smile:"
  options = { channel: '#general', text: welcome, as_user: true }
  Slack.chat_postMessage(options)
  puts "Welcomed #{data['user']['name']}"
end

Thread.new do
  client.start
end
