# frozen_string_literal: true

class AdminController < ApplicationController
  def index; end

  def custom_characters
    @custom_characters = CustomCharacter.all.includes(:user)
  end

  def show_custom_character
    @custom_character = CustomCharacter.includes(:user).find(params[:id])
  end
end
