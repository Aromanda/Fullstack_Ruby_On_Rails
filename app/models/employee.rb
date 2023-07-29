# app/models/employee.rb
class Employee < ApplicationRecord
  belongs_to :user
  belongs_to :address

  accepts_nested_attributes_for :user

  validates :user_id, :address_id, presence: true
end

