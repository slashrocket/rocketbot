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
      tour
    end

    private

    def tour
      'Welcome to slashrocket!
      Here\'s a quick channel breakdown:
      *#general* - everything tech/programming related :computer:
      *#random* - for anything that\'s not :simple_smile:
      *#debug* - you need help with your code, this is the place to ask :bug:
      *#newbies* - feel free to take it slow, we\'re happy to help :smile_cat:
      *#team_projects* - help us build something or start a project of your own. Our GitHub repo is at github.com/slashrocket :white_check_mark:
      *#resources* - relevant links, videos, etc that could help the learning process :book:
      *#hackathon* - discuss a past, current, or upcoming hackathon :rocket:
      *#meta* - all things slashrocket. Whether it\'s good, bad, or anything in between, the admin team is listening. :cop:
      *#gaming* - fun chat about all platforms, all games :video_game:
      *Message @seanosaur, @4xposed, @mike, @paulstraw, or @mcmahoniel if you need to get in touch with an admin.* :ghost:'
    end

    # Check if this is a slash command or a mention.
    def slash_command?
      @params['command'].present?
    end
  end
end
