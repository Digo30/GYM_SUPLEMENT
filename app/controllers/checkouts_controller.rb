class CheckoutsController < ApplicationController
  def new
    @cart = current_user.cart
    @total_price = @cart.cart_items.sum { |item| item.product.price * item.quantity }
  end

  def create
    # Aqui você pode integrar com o Stripe ou outro gateway de pagamento.
    @cart = current_user.cart

    if process_payment
      @cart.cart_items.destroy_all # Limpa o carrinho após o pagamento
      redirect_to root_path, notice: "Compra realizada com sucesso!"
    else
      redirect_to new_checkout_path, alert: "Houve um erro no pagamento."
    end
  end

  private

  def process_payment
    # Simulação de um processamento de pagamento bem-sucedido
    true
  end
end
