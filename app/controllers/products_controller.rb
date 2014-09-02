class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to new_product_url, notice: 'Product is created successfully.'

    else
      flash[:alert] = 'Failed to create product.'
      render :new
    end
  end

  protected
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
