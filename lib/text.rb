require 'twilio-ruby'
class Text

def initialize(client=nil)
  @client = Twilio::REST::Client.new account_sid, auth_token

def message
  t = Time.new + 60*60
  g = t.strftime("%H:%M").to_s
  message = "Thank you! Your order was placed and will be delivered before " + g
end

def send
  account_sid = ENV['TWILIO_ACCOUNT_SID']
  auth_token = ENV['TWILIO_AUTH_TOKEN']
  @client.account.messages.create(
    from: ENV['FROM'],
    to: ENV['TO'],
    body: message
  )
end

end
