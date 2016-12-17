class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :name
      t.text :details
      t.datetime :startdate
      t.timestamps
    end
  end
end
