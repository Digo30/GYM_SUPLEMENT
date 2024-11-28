class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @cart = current_user.cart
  end

  def add_product
    # Encontre o carrinho do usuário
    cart = current_user.cart

    # Encontre o produto a ser adicionado
    product = Product.find(params[:product_id])

    # Encontre ou inicialize o cart_item
    cart_item = cart.cart_items.find_or_initialize_by(product: product)

    # Se o produto já estiver no carrinho, aumente a quantidade
    if cart_item.new_record?
      cart_item.quantity = 1
    else
      cart_item.quantity += 1
    end

    # Salve o cart_item
    if cart_item.save
      redirect_to carts_path(cart), notice: 'Produto adicionado ao carrinho.'
    else
      redirect_to products_path, alert: 'Ocorreu um erro ao adicionar o produto.'
    end
  end
end
