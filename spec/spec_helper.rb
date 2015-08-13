$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'sqlite3'
require 'active_record'
require 'chinook_database'

RSpec.configure do |config|
  config.before :all do
    ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: ChinookDatabase.path
  end
end