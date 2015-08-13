class Customer < ActiveRecord::Base
  self.table_name = 'Customer'
  self.primary_key = 'CustomerId'

  alias_attribute :id, 'CustomerId'
  alias_attribute :first_name, 'FirstName'
  alias_attribute :last_name, 'LastName'
  alias_attribute :company, 'Company'
  alias_attribute :address, 'Address'
  alias_attribute :city, 'City'
  alias_attribute :state, 'State'
  alias_attribute :country, 'Country'
  alias_attribute :postal_code, 'PostalCode'
  alias_attribute :phone, 'Phone'
  alias_attribute :fax, 'Fax'
  alias_attribute :email, 'Email'
  alias_attribute :support_rep_id, 'SupportRepId'

  belongs_to :support_rep, class_name: 'Employee', foreign_key: 'SupportRepId'
  has_many :invoices, foreign_key: 'CustomerId'
end