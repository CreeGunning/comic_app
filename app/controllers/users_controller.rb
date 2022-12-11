# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user
  def profile
    @user.update(views: @user.views + 1)
    @custom_characters = @user.custom_characters.order(created_a: :desc)
    @total_views = 0

    @custom_characters.each do |custom_character|
      @total_views += custom_character.views
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
