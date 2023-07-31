class User < ApplicationRecord
    has_many :order_items
    has_many :payments
    has_many :reviews
    has_many :wishlists
    has_many :products, through: :wishlists
end
