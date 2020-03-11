#! /usr/bin/env ruby

require 'watir'
require 'pry'
require 'twilio-ruby'

require_relative 'login.rb'
# user = Login.new(:pass => '123younG', :email => 'raphlbrume@gmail.com')

# user.auth 

# $browser.link(text: 'Code Review Requests').click

# 1.upto(5) do |n|
#   puts n
#   if $browser.link(class: 'review-request-button').exist?
#     $browser.link(class: 'review-request-button').click
#   end
#   pp 'fjfhjhfjfjhf'
#   pp $browser.button(text: 'No Available Reviews').exist?

#   sleep 5 # second
# end
# puts claim_button
# $browser.close
# pp 'gjgjnjgk'

account_sid = 'ACf9ada9c86ca52fd8bf1bd28236c42fbd'
auth_token = '83161cbdc04b2c3a1471e656d914cf53'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+12542062911' # Your Twilio number
to = '+2347061628517' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend! go review some codes"
)