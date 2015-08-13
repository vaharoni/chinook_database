class PlayList < ActiveRecord::Base
  self.table_name = 'PlayList'
  self.primary_key = 'PlayListId'

  alias_attribute :id, 'PlayListId'
  alias_attribute :name, 'Name'

  has_and_belongs_to_many :tracks, join_table: 'PlayListTrack', foreign_key: 'PlayListId', association_foreign_key: 'TrackId'
end