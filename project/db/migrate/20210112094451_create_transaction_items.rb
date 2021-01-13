class CreateTransactionItems < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_items do |t|
      t.references :cart_item, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
