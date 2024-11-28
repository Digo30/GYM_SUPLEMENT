class ApplicationController < ActionController::Base
  #Autenticantion login user
  #before_action :authenticate_user!, QUANDO TIVER A PAGINA DE COMPRA ATIVAR ESTE CÓDIGO


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :sobrenome])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :sobrenome])
  end

end
