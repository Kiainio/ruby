class AddUserToTransactionItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :transaction_items, :user, foreign_key: true
  end
end
