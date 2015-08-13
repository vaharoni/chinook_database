class Album < ActiveRecord::Base
  self.table_name = 'Album'
  self.primary_key = 'AlbumId'

  alias_attribute :id, 'AlbumId'
  alias_attribute :title, 'Title'
  alias_attribute :artist_id, 'ArtistId'

  belongs_to :artist, foreign_key: 'ArtistId'
  has_many :tracks, foreign_key: 'AlbumId'
end