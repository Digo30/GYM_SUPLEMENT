class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy
  has_many :products, through: :cart_items

  #Método para calcular o preço total do carrinho
  def total_price
    cart_items.sum(&:total_price) # Soma o preço total de cada item no carrinho
  end



  #TESTE CONTAGEM DE ITENS
  def total_items
    cart_items.sum(:quantity)
  end



end
