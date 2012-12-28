require "rubygems"
require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.manage.timeouts.implicit_wait = 30
driver.navigate.to "http://172.18.8.251:3000"

driver.find_element(:link, "About your applications environment").click
driver.quit
