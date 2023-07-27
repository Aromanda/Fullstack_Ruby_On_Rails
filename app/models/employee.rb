class Employee < ApplicationRecord
  belongs_to :address
  validates :user_id, presence: true, uniqueness: true
  validates :phone, presence: true
end

