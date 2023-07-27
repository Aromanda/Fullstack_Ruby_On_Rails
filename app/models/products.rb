class Product < ApplicationRecord
    belongs_to :restaurant
    validates :name, presence: true
    validates :cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
  end
  