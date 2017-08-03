require 'nokogiri'
require 'open-uri'
 


temp_link_1="http://staging.redlobster.ca/search-results?indexCatalogue=default-ca&searchQuery="
temp link_2="&wordsMode=AllWords"


doc = Nokogiri::HTML(open('http://staging.redlobster.com/menus/lunch#/desserts'))

puts "I am running on staging"
doc.css('h3.menu-item-name').each do |link|
    puts link.content
end