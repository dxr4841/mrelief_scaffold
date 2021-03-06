class SendTextController < ApplicationController

  def send_text_message
    account_sid = ENV['TWILIO_SID']
    auth_token = ENV['TWILIO_TOKEN']
    @client = Twilio::REST::Client.new account_sid, auth_token

    message = @client.account.messages.create(:body => "Jenny please?! I love you <3",
        :to => "+18477672332",     # Replace with your phone number
        :from => ENV['TWILIO_PHONE_NUMBER']   # Replace with your Twilio number
        )
  end

  def send_spanish_text_message
    account_sid = ENV['TWILIO_SID']
    auth_token = ENV['TWILIO_TOKEN']
    @client = Twilio::REST::Client.new account_sid, auth_token

    message = @client.account.messages.create(:body => "Jenny please?! I love you <3",
        :to => "+18477672332",     # Replace with your phone number
        :from => ENV['TWILIO_SPANISH_NUMBER']   # Replace with your Twilio number
        )
  end

end
