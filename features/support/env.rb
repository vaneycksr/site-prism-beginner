# frozen_string_literal: true

require 'capybara/cucumber' # encerra a sessao apos cada cenario
require 'selenium-webdriver'

# declarar que vai usar o site_prism no projeto
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome

  config.app_host = 'https://automacaocombatista.herokuapp.com'

  config.default_max_wait_time = 5
end
