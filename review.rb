#! /usr/bin/env ruby

require 'watir'
require 'webdrivers'
require 'twilio-ruby'
require 'dotenv'
Dotenv.load

require_relative 'login.rb'
require_relative 'send_message.rb'

#login to dashboard
user = Login.new(:pass => ENV['password'], :email => ENV['email'])
user.auth 

sender = SendMessage.new

#go the code review page
$browser.link(text: 'Code Review Requests').click

1.upto(170) do |n|
  if $browser.button(text: 'Submit Review').exist?
    pp 'you should do this one first'
  elsif $browser.link(class: 'review-request-button').exist?
    $browser.link(class: 'review-request-button').click
    sender.send
  elsif $browser.span(text: 'No Available Reviews').exist?
    pp 'no review yet'
  end
  sleep 180 # second
end

$browser.close
