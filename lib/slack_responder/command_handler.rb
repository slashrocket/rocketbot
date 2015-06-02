require 'open_weather'

module SlackResponder
  # Reponds to Slack slash command and mentions.
  class CommandHandler
    def initialize(params)
      @params = params
      @user_name = params['user_name']
      @timestamp = '?' + params['timestamp']

      # Slash commands don't include the trigger word in @input
      if slash_command?
        @input = params['text'].split(' ')
      else
        @input = params['text'].gsub(params['trigger_word'], '').split(' ')
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

    def weather
      return 'Please enter a valid city.' if @arguments.blank?
      options = { units: 'imperial', APPID: ENV['openweathermap_key'] }
      begin
        weather = OpenWeather::Current.city(@arguments, options)
        country = weather['sys']['country']
        return 'Please enter a valid city.' if weather['cod'] == '404'
        location = weather['name'].empty? ? country : weather['name']
        "It's currently #{weather['main']['temp'].round}\u00b0F in #{location}."
      rescue
        'Something went wrong, please wait a moment and try again.'
      end
    end

    def help
      '*Available Commands*:
      *tour*
      *weather* _<required: city name or ZIP code>_'
    end

    # Check if this is a slash command or a mention.
    def slash_command?
      @params['command'].present?
    end
  end
end
