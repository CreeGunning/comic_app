class AddViewsToCustomCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :custom_characters, :views, :integer, default: 0
  end
end
