class ApplicationController < ActionController::Base
  #Autenticantion login user
  before_action :authenticate_user!
end
