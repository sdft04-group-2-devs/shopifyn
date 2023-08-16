class Product < ApplicationRecord
    # belongs_to :category
    has_many :order_items
    has_many :reviews
    has_many :users, through: :wishlists
    belongs_to :cart_item
end
