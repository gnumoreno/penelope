class AddIndexToBooks < ActiveRecord::Migration[5.0]
  def change
    add_index :books, [:user_id, :created_at]
  end
end
