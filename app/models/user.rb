class User < ApplicationRecord
    has_secure_password

    has_many :order_items
    has_many :payments
    has_many :reviews
    has_many :wishlists
    has_many :products, through: :wishlists
    # has_one :cart
    has_many :cart_items

    # validates :email, presence: true
    # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, presence: true
    validates :role, presence: true
    validates :phone_no, presence: true, length: {minimum: 10}
    validates :password, presence: true, length: { minimum: 6 }
end
