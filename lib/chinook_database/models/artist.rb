class Artist < ActiveRecord::Base
  self.table_name = 'Artist'
  self.primary_key = 'ArtistId'

  alias_attribute :id, 'ArtistId'
  alias_attribute :name, 'Name'

  has_many :albums, foreign_key: 'ArtistId'
end