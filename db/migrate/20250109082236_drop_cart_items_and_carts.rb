class DropCartItemsAndCarts < ActiveRecord::Migration[8.0]
  def change
    drop_table :cart_items
    drop_table :carts
  end
end
