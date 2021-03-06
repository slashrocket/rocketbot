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
      <@U0383B6CP|seanosaur>, <@U04UN1Z07|jonlim>, or <@U047F4XQX|mcmahoniel> if you need to get in touch with an admin. :ghost:

      You can also use `/report` to anonymously report a message to the team.

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
      *<#C18QPALU8|ladies>* - for women and friends of women :woman-woman-girl:
      *<#C0NSMTSQ3|security>* - Hack the Planet! :computer:
      *<#C0WDKCY95|iot>* - let\'s talk hardware! :microscope:
      *<#C04JD5BMV|resources>* - relevant links, videos, etc that could help the learning process :book:
      *<#C08LLBP6Z|jobs>* - find or post a job! :jobs:
      *<#C06C0MSKV|gaming>* - fun chat about all platforms, all games :video_game:
      *<#C0F3KN55G|book-club>* - book discussion! :book:
      *<#C0FJ45737|moody-foodies>* - food discussion! :taco:
      *<#C2H7U45NE|suntory-time>* - adult beverage discussion :whiskey:
      *<#C0BAD2TTM|music>* - talk music! :trumpet:
      *<#C0HJCN8HK|movies>* - Oscar gold! :man_in_business_suit_levitating:
      *<#C0HJG0AHF|television>* - talk about your favorite shows :tv:
      *<#C0L3P7M3K|politics>* - surprisingly civil discussion :statue_of_liberty:
      *<#C0AELBMM1|sports>* - sports talk! :basketball:
      *<#C13FLLEUX|swole>* - too fit to quit :muscle:
      *<#C0A4A8T6C|portlandia>* - put a bird on it! :bird:
      *<#C0E8JAU0L|bae-area>* - talk SV! :computer:
      *<#C4LTSATK7|conferences>* - gave a talk, giving a talk, advice? :hear_no_evil:
      *<#C7C1KAJAX|travel>* - go forth and do great things :airplane: :palm_tree:
      *<#C6NBDCN56|news>* - all the news that\'s fit to print :newspaper:'
    end
  end
end
