class CartsController < ApplicationController
  before_action :authenticate_user!

  #TESTE CONTAGEM DE ITENS
  before_action :set_current_cart

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

    # Recebe a quantidade de produtos desejados
    quantity = params[:quantity].to_i

    # Se o produto já estiver no carrinho, aumente a quantidade
    if cart_item.new_record?
      quantity.zero? ? cart_item.quantity = 1 : cart_item.quantity = quantity
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


  def remove_product
    product = Product.find_by(id: params[:product_id])
    if product
      cart_item = @current_cart.cart_items.find_by(product: product)
      if cart_item
        cart_item.destroy
        flash[:notice] = "Produto removido do carrinho com sucesso."
      else
        flash[:alert] = "Produto não encontrado no carrinho."
      end
    else
      flash[:alert] = "Produto não encontrado."
    end
    redirect_to carts_path
  end




  private

  def set_current_cart
    @current_cart = Cart.find_or_create_by(user: current_user) if user_signed_in?
  end


end
