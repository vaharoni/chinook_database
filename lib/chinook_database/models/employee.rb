class Employee < ActiveRecord::Base
  self.table_name = 'Employee'
  self.primary_key = 'EmployeeId'

  alias_attribute :id, 'EmployeeId'
  alias_attribute :last_name, 'LastName'
  alias_attribute :first_name, 'FirstName'
  alias_attribute :title, 'Title'
  alias_attribute :reports_to_id, 'ReportsTo'
  alias_attribute :birth_date, 'BirthDate'
  alias_attribute :hire_date, 'HireDate'
  alias_attribute :address, 'Address'
  alias_attribute :city, 'City'
  alias_attribute :state, 'State'
  alias_attribute :country, 'Country'
  alias_attribute :postal_code, 'PostalCode'
  alias_attribute :phone, 'Phone'
  alias_attribute :fax, 'Fax'
  alias_attribute :email, 'Email'

  belongs_to :reports_to, class_name: 'Employee', foreign_key: 'ReportsTo'
  has_many :customers, foreign_key: 'SupportRepId'
end