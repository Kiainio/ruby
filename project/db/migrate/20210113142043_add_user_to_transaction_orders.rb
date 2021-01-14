class AddUserToTransactionOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :transaction_orders, :user, foreign_key: true
  end
end
