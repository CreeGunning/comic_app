class CreateCustomCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_characters do |t|
      t.string :name
      t.text :powers

      t.timestamps
    end
  end
end
