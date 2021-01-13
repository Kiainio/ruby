class CreateTransactionOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_orders do |t|
      t.string :delivery_name
      t.string :delivery_address
      t.string :delivery_phone
      t.string :delivery_postcode
      t.string :order_status
      t.decimal :deal_sum

      t.timestamps
    end
  end
end
