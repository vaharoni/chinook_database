require "chinook_database/version"

require 'sqlite3'
require 'active_record'
Dir.glob('lib/chinook_database/models/*.*').each{|x| require File.expand_path(x).split('.rb').first}

module ChinookDatabase
  def self.path
    File.expand_path('../db/Chinook.sqlite', __FILE__)
  end
end
