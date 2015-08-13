class Track < ActiveRecord::Base
  self.table_name = 'Track'
  self.primary_key = 'TrackId'

  alias_attribute :id, 'TrackId'
  alias_attribute :name, 'Name'
  alias_attribute :album_id, 'AlbumId'
  alias_attribute :media_type_id, 'MediaTypeId'
  alias_attribute :genre_id, 'GenreId'
  alias_attribute :composer, 'Composer'
  alias_attribute :milliseconds, 'Milliseconds'
  alias_attribute :bytes, 'Bytes'
  alias_attribute :unit_price, 'UnitPrice'

  belongs_to :album, foreign_key: 'AlbumId'
  belongs_to :media_type, foreign_key: 'MediaTypeId'
  belongs_to :genre, foreign_key: 'GenreId'

  has_and_belongs_to_many :play_lists, join_table: 'PlayListTrack', foreign_key: 'TrackId', association_foreign_key: 'PlayListId'
end