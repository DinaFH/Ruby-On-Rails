class ProductsController < ApplicationController
  http_basic_authenticate_with name:"iti", "password": "iti"

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @admins = Admin.all
  end

  def create
    @product = Product.new(product_params)
    p @product
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to root_path, status: :see_other
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
  private
  def product_params
     params.require(:product).permit(:name, :price, :description, :image ,:admin_id)
  end

end
