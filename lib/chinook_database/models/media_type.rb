class MediaType < ActiveRecord::Base
  self.table_name = 'MediaType'
  self.primary_key = 'MediaTypeId'

  alias_attribute :id, 'MediaTypeId'
  alias_attribute :name, 'Name'

  has_many :tracks, foreign_key: 'MediaTypeId'
end