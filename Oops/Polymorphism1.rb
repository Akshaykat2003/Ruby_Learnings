


#  Polymorphism
# Problem Statement 7: Polymorphic Messaging System
# Create an interface Message with a method send_message. Then:
# Implement two classes EmailMessage and SMSMessage that both implement the send_message method. EmailMessage should send an email, and SMSMessage should send a text message.
# Write a function send_notification that takes an object of type Message and calls the send_message method.
# Demonstrate polymorphism by calling send_notification with instances of both EmailMessage and SMSMessage.



module Message
  def send_message
    raise NotImplementedError,"Subclasses must implement the send_message method"
  end
end

class EmailMessage
  include Message
  def send_message
    puts "Email Sent Successfully"
  end
end



class SMSMessage
  include Message
  def send_message
    puts "SMS Send Successfully"
  end
end

def send_notification(message)
  message.send_message
end

email = EmailMessage.new
send_notification(email)

sms = SMSMessage.new
send_notification(sms)

 