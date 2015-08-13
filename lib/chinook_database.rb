require "chinook_database/version"

require 'sqlite3'
require 'active_record'
require_relative '../lib/chinook_database/models/album'
require_relative '../lib/chinook_database/models/artist'
require_relative '../lib/chinook_database/models/customer'
require_relative '../lib/chinook_database/models/employee'
require_relative '../lib/chinook_database/models/genre'
require_relative '../lib/chinook_database/models/invoice'
require_relative '../lib/chinook_database/models/invoice_line'
require_relative '../lib/chinook_database/models/media_type'
require_relative '../lib/chinook_database/models/play_list'
require_relative '../lib/chinook_database/models/track'

module ChinookDatabase
  def self.path
    File.expand_path('../db/Chinook.sqlite', __FILE__)
  end

  def self.connect
    ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: ChinookDatabase.path
  end
end
