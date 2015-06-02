# Receive Slack commands and validate correct tokens.
class SlackCommandController < ApplicationController
  before_action :validate_token

  def create
    # byebug
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

  def validate_token
    tokens = []
    tokens.push(ENV['slack_outgoing_webhook_token'])
    tokens.push(ENV['slack_slash_command_token'])

    render nothing: true,
           status: :forbidden unless tokens.include?(params['token'])
  end
end
