class ProductsController < ApplicationController
  # skip_before_action :authorized, only: [:index]
  # before_action :set_product, only: [:show]
  before_action :authorize_request, except: [:index, :show]

  def index
    products = Product.all
    render json: products, status: :ok
  end

  def show
    product = Product.find_by(id: params[:id])

    if product
      render json: product, except: [:created_at, :updated_at], status: :ok
    else
      render json: { error: 'Product not found' }, status: :not_found
    end
  end
  def create 
    product=Product.create(product_params)
    if product
      render json: product, status: :created_at
    else
      render json:{error:'unable to add new product'},status:422
    end
  end 

  def delete
    product = Product.find_by(id: params[:id])

    if product
      product.destroy
      render json: { message: 'Product deleted successfully' }, status: :ok
    else
      render json: { error: 'Product not found' }, status: :not_found
    end
  end

  def update
    product = Product.find_by(id: params[:id])

    if product
      if product.update(product_params)
        render json: product, except: [:created_at, :updated_at], status: :ok
      else
        render json: { error: 'Unable to update product' }, status: :unprocessable_entity
      end
    else
      render json: { error: 'Product not found' }, status: :not_found
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :stock_quantity, :brand, :image_url_1, :image_url_2, :image_url_3)
  end
end
