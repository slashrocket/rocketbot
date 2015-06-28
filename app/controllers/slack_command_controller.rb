# Receive Slack commands and validate correct tokens.
class SlackCommandController < ApplicationController
  def create
    render text: handler.response.to_s
  end

  private

  def handler
    @handler ||= SlackResponder::CommandHandler.new
  end
end
