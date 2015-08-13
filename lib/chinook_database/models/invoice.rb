class Invoice < ActiveRecord::Base
  self.table_name = 'Invoice'
  self.primary_key = 'InvoiceId'

  alias_attribute :id, 'InvoiceId'
  alias_attribute :customer_id, 'CustomerId'
  alias_attribute :invoice_date, 'InvoiceDate'
  alias_attribute :billing_address, 'BillingAddress'
  alias_attribute :billing_city, 'BillingCity'
  alias_attribute :billing_state, 'BillingState'
  alias_attribute :billing_country, 'BillingCountry'
  alias_attribute :billing_postal_code, 'BillingPostalCode'
  alias_attribute :total, 'Total'

  belongs_to :customer, foreign_key: 'CustomerId'
  has_many :invoice_lines, foreign_key: 'InvoiceId'
end