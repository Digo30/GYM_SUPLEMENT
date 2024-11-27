class PagesController < ApplicationController
<<<<<<< HEAD
  #Autenticantion login user - Deixar comentado!!!!!!!
  #skip_before_action :authenticate_user!, only: :home
=======
  #Autenticantion login user
  # skip_before_action :authenticate_user!, only: :home
>>>>>>> master

  def home
    @products = Product.all
  end
end
