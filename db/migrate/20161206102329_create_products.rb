class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :picture_url
      t.text :comments
      t.boolean :christmas
      t.boolean :clothing
      t.timestamps
    end
  end
end
