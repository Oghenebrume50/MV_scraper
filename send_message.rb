require 'dotenv'
Dotenv.load

class SendMessage
    attr_reader :account_sid, :auth_token, :client,
    :from, :to

    def initialize
      @account_sid = ENV['account_sid']
      @auth_token = ENV['auth_token']
      @client = Twilio::REST::Client.new(@account_sid, @auth_token)
      @from = ENV['from']
      @to = ENV['to']
    end
    
    def send
      client.messages.create(
        from: from,
        to: to,
        body: "Hey man go do impressive work with some reviews"
      )
    end
end