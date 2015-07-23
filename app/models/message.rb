class Message

  def self.receive(from, body)
    # TODO the ability to handle users saying they can't make it or
    #      confirming that they can

    # lookup user
    # lookup shift
    # if CANCEL, remove from @shift.users
    # if ACCEPT, add to @shift.users

    true
  end

  def self.send(to, body)
    twilio_phone_number = '5126435787' # TODO move

    @client = Twilio::REST::Client.new

    @client.messages.create(
      from: "+1#{twilio_phone_number}",
      to:   "+1#{to}",
      body: body
    )
  end

end
