class InvoiceLine < ActiveRecord::Base
  self.table_name = 'InvoiceLine'
  self.primary_key = 'InvoiceLineId'

  alias_attribute :id, 'InvoiceLineId'
  alias_attribute :invoice_id, 'InvoiceId'
  alias_attribute :track_id, 'TrackId'
  alias_attribute :unit_price, 'UnitPrice'
  alias_attribute :quantity, 'Quantity'

  belongs_to :invoice, foreign_key: 'InvoiceId'
end