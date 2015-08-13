class Genre < ActiveRecord::Base
  self.table_name = 'Genre'
  self.primary_key = 'GenreId'

  alias_attribute :id, 'GenreId'
  alias_attribute :name, 'Name'

  has_many :tracks, foreign_key: 'GenreId'
end