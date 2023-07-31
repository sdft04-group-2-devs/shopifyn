class ReviewsController < ApplicationController

  def index
    reviews = Review.all
    render json: reviews
  end

    def create
      review = Review.create(review_params)
  
      if review
        render json: review, status: :created
      else
        render json: review.errors, status: :unprocessable_entity
      end
    end
  
    def show
      review = Review.find(params[:id])
      render json: review
    end
  
    private
  
    def review_params
      params.permit(:product_id, :star_rating, :comment, :user_id)
    end
  end