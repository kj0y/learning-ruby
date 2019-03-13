require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC91aca10988eca0112a80b0983c9d0157'
auth_token = '64535f4ea52ad949174aecb8045c0d47'
 
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
    :from => "+15033609387",
    :to => "+15303565987",
    :body => "Haaaii"
)

puts message.to