# frozen_string_literal: true

require 'capybara/cucumber' # encerra a sessao apos cada cenario
require 'selenium-webdriver'

# declarar que vai usar o site_prism no projeto
require 'site_prism'

# carrega o arquivo que criei
require_relative 'page_helper.rb'

# cria uma constante para os diferentes ambientes (homolog, prod, testes)
AMBIENTE = ENV['AMBIENTE'] # homolog

# carrega o arquivo yml, que pode ser qualquer ambiente (homolog, prod, testes)
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

# vai carregar o arquivo homolog.yml

# define o modulo que criei como global
World(PageObjects)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome

  #  config.app_host = 'https://automacaocombatista.herokuapp.com'

  config.app_host = CONFIG['url_padrao']

  config.default_max_wait_time = 5
end
