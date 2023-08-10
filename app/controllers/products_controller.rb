class ProductsController < ApplicationController
    # skip_before_action :authorized, only: [:index]
    # before_action :set_product, only: [:show]
    # before_action :authorize_request, except: [:index, :show]
    


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

    private
    def set_product
        @product = Product.find(params[:id])
    end
  end
