class CartItem < ApplicationRecord
  belongs_to :product
  has_one :transaction_item
  belongs_to :user
end
