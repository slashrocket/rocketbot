# Receive Slack commands and validate correct tokens.
class SlackCommandController < ApplicationController
  def create
    render plain: handler.response
  end

  private

  def handler
    @handler ||= SlackResponder::CommandHandler.new
  end
end
