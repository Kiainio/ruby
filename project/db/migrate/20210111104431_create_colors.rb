class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.integer :color_id
      t.integer :rgb
      t.string :description

      t.timestamps
    end
  end
end
