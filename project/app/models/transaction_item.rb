class TransactionItem < ApplicationRecord
  belongs_to :cart_item
  belongs_to :transaction_order
  belongs_to :user
end
