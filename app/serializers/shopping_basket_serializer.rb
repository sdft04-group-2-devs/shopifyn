class ShoppingBasketSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :quantity
end
