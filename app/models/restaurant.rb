class Restaurant < ApplicationRecord
  belongs_to :address
  validates :user_id, presence: true
  validates :phone, presence: true
  validates :name, presence: true
  validates :price_range, presence: true
end
