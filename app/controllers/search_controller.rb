# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @query = CustomCharacter.ransack(params[:q])
    @custom_characters = @query.result(disctinct: true)
  end
end
