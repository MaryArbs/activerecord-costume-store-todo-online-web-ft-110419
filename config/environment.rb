require "bundler/setup"
require 'rake'

require "sinatra/activerecord"
require 'ostruct'
require 'date'

Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
