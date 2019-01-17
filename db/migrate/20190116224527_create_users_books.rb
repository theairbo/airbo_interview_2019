class CreateUsersBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :users_books do |t|
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true
      t.integer :amount, default: 1, null: false

      t.timestamps
    end
  end
end
