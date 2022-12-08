# frozen_string_literal: true

class AddUserToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :custom_characters, :user, null: false, foreign_key: true
  end
end
