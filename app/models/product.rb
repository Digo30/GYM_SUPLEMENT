class Product < ApplicationRecord
  belongs_to :user

  validates :name, :price, :stock, :brand, :category, presence: true
end
