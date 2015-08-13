class Employee < ActiveRecord::Base
  belongs_to :reports_to, class_name: 'Employee', foreign_key: 'reports_to_employee_id'
  has_many :customers, foreign_key: 'support_rep_id'
end