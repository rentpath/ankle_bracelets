class Message

  def self.receive(from, body)
    # TODO the ability to handle users saying they can't make it or
    #      confirming that they can

    user = User.find_by_phone_number(from.remove('+1'))

    if body.upcase.include?('CANCEL')
      if user.shifts.count == 1
	Message.send(user.phone_number, "We're sorry to hear that. Hopefully you can volunteer next time!")
	user.shifts.first.delete
      else
	Message.send(user.phone_number, "Unfortunately we have multiple reservations for you, please cancel using the web site")
      end
    end

    if body.upcase.include?('ACCEPT')
      # TODO: ACCEPTing a shift that's sent to you
    end

    user # TODO: not sure what to return
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
