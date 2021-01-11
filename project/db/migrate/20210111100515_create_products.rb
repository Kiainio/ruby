class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :product_name
      t.string :description
      t.decimal :retail_price
      t.integer :sales
      t.string :image_directory

      t.timestamps
    end
  end
end
