
require 'bundler'
require 'capybara/dsl'
require 'capybara/rspec'

Bundler.setup(:default)
Bundler.require


Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'http://kredit.check24.de/vergleich'
Capybara.default_max_wait_time = 10

RSpec.configure do |config|
  config.formatter = :documentation
end
