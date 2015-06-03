require 'open_weather'

module SlackResponder
  # Reponds to Slack slash command and mentions.
  class CommandHandler
    def initialize(params)
      @params = params
      @user_name = params['user_name']

      # Slash commands don't include the trigger word in @input
      if slash_command?
        @input = params['text'].split(' ')
      else
        @input = params['text'].gsub(params['trigger_word'], '').split(' ')
        @timestamp = '?' + params['timestamp']
      end

      @command = @input[0]
      @arguments = @input.drop(1).join(' ')
    end

    # Call the approprate method based on the input from Slack.
    def response
      return tour if @command == 'tour'
      return weather if @command == 'weather'
      help
    end

    private

    def tour
      return 'Welcome to slashrocket!
      Here\'s a quick channel breakdown:
      #general - everything tech/programming related
      #debug - you need help with your code, this is the place to ask
      #team_projects - help us build something or start a project of your own. Our GitHub repo is at github.com/slashrocket
      #resources - relevant links, videos, etc that could help the learning process
      #hackathon - discuss a past, current, or upcoming hackathon
      #meta - all things slashrocket. Whether it\'s good, bad, or anything in between, the admin team is listening.
      Message @seanosaur, @4xposed, @mike, @paulstraw, or @mcmahoniel if you need to get in touch with an admin.'
    end

    def help
      '*Available Commands*:
      *tour*'
    end

    # Check if this is a slash command or a mention.
    def slash_command?
      @params['command'].present?
    end
  end
end
