#! /usr/bin/env ruby

require 'watir'
require 'pry'

require_relative 'login.rb'


user = Login.new(:pass => '123younG', :email => 'raphlbrume@gmail.com')

user.auth 

pp 'gjgjnjgk'

$browser.link(text: 'Code Review Requests').click

pp $browser.span(text: 'No Available Reviews').exist?

Pry.start(binding)
$browser.close