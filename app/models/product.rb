class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :name, :price, :stock, :brand, :category, presence: true
end
