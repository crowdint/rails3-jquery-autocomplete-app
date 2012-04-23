require 'cucumber/rails'
require 'cucumber/autocomplete'

Capybara.javascript_driver = :webkit
Capybara.default_selector = :css
Capybara.default_wait_time = 5

ActionController::Base.allow_rescue = false

Cucumber::Rails::Database.javascript_strategy = :truncation
