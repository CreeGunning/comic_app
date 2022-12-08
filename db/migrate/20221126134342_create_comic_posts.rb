class CreateSWCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :sw_characters do |t|
      t.string :name
      t.text :homeworld

      t.timestamps
    end
  end
end
