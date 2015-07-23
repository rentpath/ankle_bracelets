class MessagesController < ApplicationController
  def receive
    Message.receive(params['From'], params['Body'])
    render nothing: true
  end
end
