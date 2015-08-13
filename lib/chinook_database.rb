require "chinook_database/version"

require 'sqlite3'
require 'active_record'
require 'chinook_database/models/album'
require 'chinook_database/models/artist'
require 'chinook_database/models/customer'
require 'chinook_database/models/employee'
require 'chinook_database/models/genre'
require 'chinook_database/models/invoice'
require 'chinook_database/models/invoice_line'
require 'chinook_database/models/media_type'
require 'chinook_database/models/playlist'
require 'chinook_database/models/track'

module ChinookDatabase
  def self.path
    File.expand_path('../db/Chinook.sqlite', __FILE__)
  end

  def self.connect
    ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: ChinookDatabase.path
  end
end
