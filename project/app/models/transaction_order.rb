class TransactionOrder < ApplicationRecord
    has_many :transaction_items
end
