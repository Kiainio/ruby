class AddUserToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :cart_items, :user, foreign_key: true
  end
end
