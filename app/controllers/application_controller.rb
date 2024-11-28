class ApplicationController < ActionController::Base
  #Autenticantion login user
  #before_action :authenticate_user!, QUANDO TIVER A PAGINA DE COMPRA ATIVAR ESTE CÓDIGO


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :sobrenome])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :sobrenome])
  end



  before_action :set_current_cart

  private

  def set_current_cart
    if user_signed_in?
      @current_cart = Cart.find_or_create_by(user: current_user)
    else
      @current_cart = nil
    end
  end


end
