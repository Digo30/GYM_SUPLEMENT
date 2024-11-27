class PagesController < ApplicationController
  #Autenticantion login user - Deixar comentado!!!!!!!
  #Autenticantion login user
  #skip_before_action :authenticate_user!, only: :home

  def home
    @products = Product.all
  end
end
