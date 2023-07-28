class WishlistsController < ApplicationController
    def index
        wishlists = Wishlist.all
        render json: wishlists
    end

    def show
        wishlist = Wishlist.find_by(id: params[:id])
        if wishlist
            render json: wishlist, only: [:user_id, :product_id], status: :ok
        else
            render json: {error: "Item not found"}, status: :not_found
        end
    end

    def create
        wishlist = Wishlist.create(wishlist_params)
        render json: wishlist, only: [:user_id, :product_id], status: :created
        
    end

    private

    def wishlist_params
        params.permit(:user_id, :product_id)
    end
end
