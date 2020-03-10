#! /usr/bin/env ruby

require 'watir'
require 'pry'

browser = Watir::Browser.new :chrome, headless: true

browser.goto 'https://dashboard.microverse.org/code_review_request'

form = browser.form(class: 'auth0-lock-widget')
form.text_field(name: 'email').set('raphlbrume@gmail.com')
form.text_field(name: 'password').set('123younG')
form.button(text: 'Log In').click

sleep(2)

pp form

pp 'gjgjnjgk'

browser.link(text: 'Code Review Requests').click

# => 'Guides – Watir Project'

Pry.start(binding)
browser.close