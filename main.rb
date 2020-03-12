#! /usr/bin/env ruby

require 'watir'
require 'pry'
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

1.upto(2) do |n|
  puts n
  puts $browser.title
  if $browser.link(class: 'review-request-button').exist?

    pp 'review dey'
    pp $browser.link(class: 'review-request-button').exist?

    $browser.link(class: 'review-request-button').click
    
    sender.send
  end
  pp  $browser.span(text: 'No Available Reviews').exist?
  pp 'fjfhjhfjfjhf'
  if $browser.button(text: 'No Available Reviews').exist?
    pp 'no review dey'
    pp  $browser.button(text: 'No Available Reviews').exist?
    sender.send
  end
  sleep 5 # second
end

$browser.close
pp 'gjgjnjgk'
