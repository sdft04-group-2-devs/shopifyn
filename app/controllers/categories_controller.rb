class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories,include: :products
    end

    def show
        category = Category.find_by(id: params[:id])
        if category
            render json: category, only: [:category_name], status: :ok
        else
            render json: {error: "Category not found"}, status: :not_found
        end
    end

    def create
        category = Category.create(category_params)
        render json: category, only: [:category_name], status: :created
        
    end

    private

    def category_params
        params.permit(:category_name)
    end

end
