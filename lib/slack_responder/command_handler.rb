module SlackResponder
  # Reponds to Slack slash command and mentions.
  class CommandHandler
    def response
      tour
    end

    private

    def tour
      '*Welcome to slashrocket!*

      *Here\'s a quick channel breakdown:*

      *#general* - everything tech/programming related :computer:
      *#random* - for anything that\'s not :simple_smile:
      *#debug* - if you need help with your code, this is the place to ask :bug:
      *#newbies* - feel free to take it slow, we\'re happy to help :smile_cat:
      *#team_projects* - help us build something or start a project of your own - check out <https://github.com/slashrocket|our GitHub> :white_check_mark:
      *#devops* - discuss the arcane world of devops :fireworks:
      *#resources* - relevant links, videos, etc that could help the learning process :book:
      *#hackathon* - discuss a past, current, or upcoming hackathon :rocket:
      *#meta* - all things slashrocket. Whether it\'s good, bad, or anything in between, the admin team is listening :cop:
      *#gaming* - fun chat about all platforms, all games :video_game:

      We also have a <https://community.slashrocket.io|great forum> open to anyone on slashrocket! :book:

      *Message @seanosaur, @4xposed, @mike, @paulstraw, or @mcmahoniel if you need to get in touch with an admin* :ghost:'
    end
  end
end
