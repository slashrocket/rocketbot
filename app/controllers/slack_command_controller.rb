# Receive Slack commands and validate correct tokens.
class SlackCommandController < ApplicationController
  def create
    if params['command'].present?
      render text: handler.response.to_s
    else
      render json: { text: handler.response.to_s }
    end
  end

  private

  def handler
    @handler ||= SlackResponder::CommandHandler.new(params)
  end
end
