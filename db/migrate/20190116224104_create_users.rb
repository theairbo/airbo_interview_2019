class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :joined_book_club

      t.timestamps
    end
  end
end
