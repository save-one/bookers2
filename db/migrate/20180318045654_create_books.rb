class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.text :title
      t.integer :user_id
      t.text :opinion
      t.integer :book_id

      t.timestamps
    end
  end
end
