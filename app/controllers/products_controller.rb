class ProductsController < ApplicationController
    # skip_before_action :authorized, only: [:index]
    # before_action :set_product, only: [:show]
    # before_action :authorize_request, except: [:index, :show]
    

  

    def index
      products = Product.all
      render json: products, status: :ok
    end

    def create
      product = Product.create(product_params)
      if product
        render json: product, status: :created
      else
        render json: {error: 'Unprocessable entity'}, status: :unprocessable_entity
      end

    end
  
    def show
      product = Product.find_by(id: params[:id])
  
      if product
        render json: product, except: [:created_at, :updated_at], include: :reviews, status: :ok
      else
        render json: { error: 'Product not found' }, status: :not_found
      end
    end

    private
    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
      params.permit(:name, :price, :description, :brand, :stock_quantity, :image_url_1, :image_url_2, :image_url_3)
    end
  end
