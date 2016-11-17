class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.integer :pages

      t.timestamps
    end
  end
end
