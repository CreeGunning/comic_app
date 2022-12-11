# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_query

  def set_query
    @query = CustomCharacter.ransack(params[:q])
  end
end
