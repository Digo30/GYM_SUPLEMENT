class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  before_save :set_default_quantity

  def total_price
    self.quantity * self.product.price
  end

  private

  def set_default_quantity
    self.quantity ||= 0
  end
end
