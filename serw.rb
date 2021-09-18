# test script
require "rubygems"
require "csv"
require "twilio-ruby"


account_sid = "ACd95d7b5601ff14e45e6964728c0082f7"
auth_token = "eba2fb6b99fbdedc99f62ec503338804"
@client = Twilio::REST::Client.new account_sid, auth_token


file = File.read("csv1.csv")
csv = CSV.parse file
phone_array = csv.flatten


phone_array.each do |phone|
    puts phone
      message = @client.messages.create( 
        body: "УПЯЧКО ПОПЯЧСА!!!!! Я ИДИОТ УБЕЙТЕ МЕНЯ КТОНИБУДЬ",  
        messaging_service_sid: 'MG94647687a4c0cd659466ce4aec360a23',      
        to: phone 
      ) 
    puts message.id
end

