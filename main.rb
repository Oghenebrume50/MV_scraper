#! /usr/bin/env ruby

require 'watir'
require 'pry'
require 'net/http'
require 'uri'

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


v = Net::HTTP.post URI('https://api.twilio.com/2010-04-01/Accounts/ACf9ada9c86ca52fd8bf1bd28236c42fbd/Messages.json'),
               { "Body" => "McAvoy or Stewart? These timelines can get so confusing.", 
                "From" => "+12542062911",
                "StatusCallback" => "http://postb.in/1234abcd",
                "To" => "+2347061628517",
                "u" => "ACf9ada9c86ca52fd8bf1bd28236c42fbd",
                "password" => "83161cbdc04b2c3a1471e656d914cf53"
               }.to_json,
               "Content-Type" => "application/json"
puts v
v.each {|i,v| puts i,v}
# #Pry.start(binding)
# curl -X POST 
# https://api.twilio.com/2010-04-01/Accounts/ACf9ada9c86ca52fd8bf1bd28236c42fbd/Messages.json 
# --data-urlencode "Body=McAvoy or Stewart? These timelines can get so confusing." 
# --data-urlencode "From=+12542062911" 
# --data-urlencode "StatusCallback=http://postb.in/1234abcd" 
# --data-urlencode "To=+2347061628517" 
# -u ACf9ada9c86ca52fd8bf1bd28236c42fbd:83161cbdc04b2c3a1471e656d914cf53
