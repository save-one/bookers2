class AddUserImageToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :user_image, :string
  end
end
