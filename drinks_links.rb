require 'nokogiri'
require 'open-uri'
require 'csv'


temp1="http://staging.redlobster.ca/search-results?indexCatalogue=default-ca&searchQuery="
temp2="&wordsMode=AllWords"




csv_text = File.read('list.csv',encoding: "iso-8859-1:UTF-8")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
loc1= "#{row['url']}"

       puts loc1

 value = loc1.split(" ")
loc2=temp1<<value.to_s<<temp2
puts loc2
doc = Nokogiri::HTML(open(loc2))
sleep 2
puts "I am running on staging"
doc.css('a.read-more').each do |link|
    puts "Inside the "<<link.href
end





end