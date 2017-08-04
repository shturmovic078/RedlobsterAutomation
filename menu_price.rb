require 'watir-webdriver'
require 'webdriver-user-agent'
require 'csv'
require 'watir-scroll'
require 'time'




 

def setupBrowserStack

include Selenium

caps = WebDriver::Remote::Capabilities.new
caps['browser'] = 'IE'
caps['browser_version'] = '11.0'
caps['os'] = 'Windows'
caps['os_version'] = '7'
caps['resolution'] = '1024x768'
caps["browserstack.debug"] = "true"

$b= Watir::Browser.new(:remote,
  :url => "http://zaqwsx1:zqybk75kc8SQJmSXFKvg@hub-cloud.browserstack.com/wd/hub",
  :desired_capabilities => caps)

$b.driver.manage.window.maximize
sleep 5
$b.goto "http://staging.redlobster.ca/locations?utm_content=see-all"

sleep 5

$b.refresh
if $b.alert.exists?
    $b.alert.text
    $b.alert.ok 
end
sleep 5
$b.text_field(:name => "enter-zip").select
$b.send_keys "Toronto"
sleep 5
$b.element(:id => "B-btn").click
sleep 5
$b.links(:class => "round button map-set-location").first.click
sleep 5
end 



puts setupBrowserStack

i=0
csv_text = File.read('items_list.csv',encoding: "iso-8859-1:UTF-8")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|  
sleep 4
url= "#{row['url']}"
$b.goto url
i+=1
$b.screenshot.save i.to_s<<"_"<<$b.title<<".png"



end






 


$b.quit