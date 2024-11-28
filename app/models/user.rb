class User < ApplicationRecord
  has_many :products
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_one :cart, dependent: :destroy
  after_create :initialize_cart

  private

  def initialize_cart
    self.create_cart
  end

end
