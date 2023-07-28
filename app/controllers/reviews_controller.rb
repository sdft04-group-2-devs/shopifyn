class ReviewsController < ApplicationController
    def create
      @review = Review.new(review_params)
  
      if @review.save
        render json: @review, status: :created
      else
        render json: @review.errors, status: :unprocessable_entity
      end
    end
  
    def show
      @review = Review.find(params[:id])
      render json: @review
    end
  
    private
  
    def review_params
      params.require(:review).permit(:product_id, :rating, :comment)
    end
  end