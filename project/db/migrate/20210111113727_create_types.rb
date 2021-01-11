class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.integer :type_id
      t.string :product_type_name

      t.timestamps
    end
  end
end
