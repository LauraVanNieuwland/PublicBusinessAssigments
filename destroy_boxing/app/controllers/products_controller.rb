class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new # needed to instantiate the form_for
  end

  def create
    @product = Product.new(product_params.merge(user_id: current_user.id))
    if @product.save
      redirect_to user_products_path
    else 
      render :new
    end
    @product.save
    # Will raise ActiveModel::ForbiddenAttributesError
  end


  # def edit
  #   @product = Product.find(params[:id])
  # end

  # def update
  #   @product = Product.find(params[:id])
  #   @product.update(params[:product])
  #   # Will raise ActiveModel::ForbiddenAttributesError
  # end

  # def destroy
  #   @product = Product.find(params[:id])
  #   @product.destroy

  #   # no need for app/views/products/destroy.html.erb
  #   redirect_to products_path
  # end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :image)
  end

end
