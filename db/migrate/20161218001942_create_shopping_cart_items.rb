class CreateShoppingCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_cart_items do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :count
      t.decimal :cost
      t.timestamps
    end
  end
end
