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

      *#announcements* - check here for annoucements from the :slashrocket: team!
      *#slashrocket-general* - on-topic tech/programming discussion :computer:
      *#meta* - questions/comments/concerns about :slashrocket:, we\'re all ears! :ear:
      *#random* - for anything that\'s random :simple_smile:
      *#intros* - say hello or introduce yourself! :wave:
      *#debug* - if you need help with your code, this is the place to ask :bug:
      *#newbies* - feel free to take it slow, we\'re happy to help :smile_cat:
      *#team_projects* - help us build something or start a project of your own - check out <https://github.com/slashrocket|our GitHub> :white_check_mark:
      *#devops* - discuss the arcane world of devops :fireworks:
      *#design* - the finer things in dev :wine_glass:
      *#security* - Hack the Planet! :computer:
      *#resources* - relevant links, videos, etc that could help the learning process :book:
      *#jobs* - find or post a job! :jobs:
      *#hackathon* - discuss a past, current, or upcoming hackathon :rocket:
      *#coding-challenges* - participate in fun programming exercises :computer:
      *#hangouts* - check out our weekly-ish gettogethers! :wave:
      *#gaming* - fun chat about all platforms, all games :video_game:
      *#book-club* - book discussion! :book:
      *#moody-foodies* - food discussion! :taco:
      *#music* - talk music! :trumpet:
      *#movies* - Oscar gold! :man_in_business_suit_levitating:
      *#television* - talk about your favorite shows :tv:
      *#politics* - surprisingly civil discussion :statue_of_liberty:
      *#sports* - sports talk! :basketball:
      *#portlandia* - put a bird on it! :bird:
      *#bae-area* - talk SV! :computer:
      *#soflo* - fun in the sun! :sunny:

      We also have a <https://community.slashrocket.io|great forum> open to anyone on slashrocket! :book:

      *Message @seanosaur, @4xposed, @mike, @mcmahoniel if you need to get in touch with an admin* :ghost:'
    end
  end
end
