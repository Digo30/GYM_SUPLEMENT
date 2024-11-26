class ProductsController < ApplicationController

  before_action :set_product, only: [:edit, :update]
  before_action :set_user, only: [:new, :create, :edit]


  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = @user
    if @product.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to user_path(@user)
    else
      render :edit, status: :unprocessable_entity
    end
  end


  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:category, :brand, :price, :stock)
  end
end
