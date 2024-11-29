class CheckoutsController < ApplicationController

  before_action :set_cart, only: [:new, :create, :confirmation]
  def new
    @cart = current_user.cart
    @total_price = @cart.cart_items.sum { |item| item.product.price * item.quantity }
  end

  def create
    # Aqui você pode integrar com o Stripe ou outro gateway de pagamento.
    @cart = current_user.cart

    if process_payment
      @cart.cart_items.destroy_all # Limpa o carrinho após o pagamento
      redirect_to checkout_confirmation_path, notice: "Compra realizada com sucesso!"
    else
      flash.now[:alert] = "Houve um erro no pagamento. Tente novamente."
      render :new
    end
  end


  def process_payment
    # Verifica se o carrinho tem itens
    if @cart.cart_items.empty?
      flash[:alert] = "Seu carrinho está vazio. Adicione itens antes de finalizar a compra."
      return false
    end

    # Preenche os detalhes do pedido
    @order = {
      order_number: SecureRandom.hex(10),  # Gera um número aleatório para o pedido
      total: @cart.cart_items.sum { |item| item.product.price * item.quantity },  # Calcula o valor total
      items: @cart.cart_items.map { |item| { name: item.product.name, quantity: item.quantity, price: item.product.price } }  # Adiciona os itens ao pedido
    }

    # Salva os detalhes do pedido na sessão
    session[:order_details] = @order


    true
  end



  def set_cart
    @cart = current_user.cart || Cart.create(user: current_user)
  end

  def confirmation
    @order = session[:order_details]
  end




  private

  def set_cart
    @cart = current_user.cart
  end

end
