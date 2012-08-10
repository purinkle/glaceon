ENV['RAILS_ENV'] = 'test'
require './config/environment'
require 'database_cleaner'
require 'rspec'
DatabaseCleaner.strategy = :truncation

Spinach.hooks.after_scenario do
  DatabaseCleaner.clean
end