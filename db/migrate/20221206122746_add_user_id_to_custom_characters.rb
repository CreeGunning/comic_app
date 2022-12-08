class AddUserIdToCustomCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :custom_characters, :user_id, :integer
  end
end
