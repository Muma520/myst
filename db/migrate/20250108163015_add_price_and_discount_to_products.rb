class AddPriceAndDiscountToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :price, :integer
    add_column :products, :discount, :integer
  end
end
