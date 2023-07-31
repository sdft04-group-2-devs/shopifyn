class ProductsController < ApplicationController
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
  end
  
