require "rubygems"
require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.manage.timeouts.implicit_wait = 30
driver.navigate.to "http://0.0.0.0:3000"

driver.find_element(:link, "About your application's environment").click
driver.quit
