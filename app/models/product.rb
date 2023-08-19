class Product < ApplicationRecord
    has_many :order_items
    has_many :reviews
    has_many :users, through: :wishlists
    
end
