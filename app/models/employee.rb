class Employee < ApplicationRecord
  belongs_to :address
  belongs_to :user
  validates :user_id, presence: true, uniqueness: true
  validates :phone, presence: true
end

