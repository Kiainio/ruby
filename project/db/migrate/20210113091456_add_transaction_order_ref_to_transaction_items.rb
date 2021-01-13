class AddTransactionOrderRefToTransactionItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :transaction_items, :transaction_order, foreign_key: true
  end
end
