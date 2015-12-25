# require 'capybara/poltergeist'
require 'webmock/rspec'
WebMock.disable_net_connect! allow_localhost: true

Capybara.default_driver = :selenium

# Capybara.javascript_driver = :poltergeist
#
# Capybara.register_driver :poltergeist do |app|
#   Capybara::Poltergeist::Driver.new(app, js_errors: false)
# end
