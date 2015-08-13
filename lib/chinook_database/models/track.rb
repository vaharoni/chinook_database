class Track < ActiveRecord::Base
  belongs_to :album
  belongs_to :media_type
  belongs_to :genre
  has_and_belongs_to_many :playlists
end