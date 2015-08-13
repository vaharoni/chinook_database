class Playlist < ActiveRecord::Base
  self.table_name = 'Playlist'
  self.primary_key = 'PlaylistId'

  alias_attribute :id, 'PlaylistId'
  alias_attribute :name, 'Name'

  has_and_belongs_to_many :tracks, join_table: 'PlaylistTrack', foreign_key: 'PlaylistId', association_foreign_key: 'TrackId'
end