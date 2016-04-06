module SlackResponder
  # Reponds to Slack slash command and mentions.
  class CommandHandler
    def response
      tour
    end

    private

    def tour
      '*Welcome to slashrocket!* :slashrocket:

      *Please check out our <https://slashrocket.io/CodeOfConduct/|Code of Conduct>*, and feel free to send a message to
      <@U0383B6CP|seanosaur>, <@U0389HVCQ|mike>, <@U03PACC1D|4xposed>, or <@U047F4XQX|mcmahoniel> if you need to get in touch with an admin. :ghost:

      *We also have a <https://community.slashrocket.io|great forum> open to the community!* :book:

      *Here\'s a quick channel breakdown:*

      *<#C0383B6DR|announcements>* - check here for annoucements from the :slashrocket: team!
      *<#C0WCKM6LC|slashrocket-general>* - on-topic tech/programming discussion :computer:
      *<#C04E2C4PY|meta>* - questions/comments/concerns about :slashrocket:, we\'re all ears! :ear:
      *<#C0383B6E1|random>* - for anything that\'s random :simple_smile:
      *<#C0CA4BCS3|intros>* - say hello or introduce yourself! :wave:
      *<#C04EQ9B6P|debug>* - if you need help with your code, this is the place to ask :bug:
      *<#C055PJG1A|newbies>* - feel free to take it slow, we\'re happy to help :smile_cat:
      *<#C03C8MFGJ|team-projects>* - help us build something or start a project of your own - check out <https://github.com/slashrocket|our GitHub> :white_check_mark:
      *<#C0611AGA3|devops>* - discuss the arcane world of devops :fireworks:
      *<#C0AKU2JUS|design>* - the finer things in dev :wine_glass:
      *<#C0NSMTSQ3|security>* - Hack the Planet! :computer:
      *<#C0WDKCY95|iot>* - let\'s talk hardware! :microscope:
      *<#C04JD5BMV|resources>* - relevant links, videos, etc that could help the learning process :book:
      *<#C08LLBP6Z|jobs>* - find or post a job! :jobs:
      *<#C0479HZHW|hackathon>* - discuss a past, current, or upcoming hackathon :rocket:
      *<#C0G5F220N|codingchallenges>* - participate in fun programming exercises :computer:
      *<#C0Q1DQ35H|hangouts>* - check out our weekly-ish gettogethers! :wave:
      *<#C06C0MSKV|gaming>* - fun chat about all platforms, all games :video_game:
      *<#C0F3KN55G|book-club>* - book discussion! :book:
      *<#C0FJ45737|moody-foodies>* - food discussion! :taco:
      *<#C0BAD2TTM|music>* - talk music! :trumpet:
      *<#C0HJCN8HK|movies>* - Oscar gold! :man_in_business_suit_levitating:
      *<#C0HJG0AHF|television>* - talk about your favorite shows :tv:
      *<#C0L3P7M3K|politics>* - surprisingly civil discussion :statue_of_liberty:
      *<#C0AELBMM1|sports>* - sports talk! :basketball:
      *<#C0A4A8T6C|portlandia>* - put a bird on it! :bird:
      *<#C0E8JAU0L|bae-area>* - talk SV! :computer:
      *<#C0FTSKV9V|soflo>* - fun in the sun! :sunny:'
    end
  end
end
