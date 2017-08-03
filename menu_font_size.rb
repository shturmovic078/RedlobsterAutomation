require 'rubygems'
require 'watir'


browser = Watir::Browser.new :firefox

browser.goto  'http://staging.redlobster.ca/menus/dinner/admirals-feast'
sleep 5

puts browser.span(:class => 'calories').style 'font-size'