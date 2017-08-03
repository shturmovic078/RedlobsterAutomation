require 'rubygems'
require 'watir-webdriver'

include Selenium

caps = WebDriver::Remote::Capabilities.new
caps['browser'] = 'IE'
caps['browser_version'] = '11.0'
caps['os'] = 'Windows'
caps['os_version'] = '7'
caps['resolution'] = '1024x768'
caps['browserstack.debug'] = 'true'
caps['browserstack.timezone'] = 'La_Rioja'
browser = Watir::Browser.new(:remote,
  :url => "http://zaqwsx1:zqybk75kc8SQJmSXFKvg@hub-cloud.browserstack.com/wd/hub",
  :desired_capabilities => caps)
browser.goto 'https://www.google.com/search?rlz=1C5CHFA_enUS689US689&btnG=Search&q=what+time+is+it'
sleep 5
browser.goto  'http://www.redlobster.com'
puts t = Time.now
sleep 5
puts browser.alert



puts browser.title

sleep 5
browser.quit