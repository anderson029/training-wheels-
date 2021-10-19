require "capybara"
require "capybara/cucumber"

Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://training-wheels-protocol.herokuapp.com"
    config.default_max_wait_time = 15
end
