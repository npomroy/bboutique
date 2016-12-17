class RenameNewsToEvents < ActiveRecord::Migration[5.0]
  def change
    rename_table :news, :events
  end
end
