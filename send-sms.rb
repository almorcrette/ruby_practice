require 'twilio-ruby'
account_sid = 'XXXX'
auth_token = 'XXXX'

@client = Twilio::REST::Client.new account_sid, auth_token

message = @client.messages.create(
  :body => "Hi! I'm sending this sms from my ruby script! Alexis",
  :from => '+XXX',
  :to => '+XXX')
  
puts message.sid