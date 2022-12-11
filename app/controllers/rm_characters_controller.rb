# frozen_string_literal: true

class RmCharactersController < ApplicationController
  before_action :fetch_data, only: %i[index show]

  def index; end

  def show
    @rm_character = @rm_data[params[:id].to_i]
  end

  private

  def fetch_data
    response = HTTParty.get('https://rickandmortyapi.com/api/character')
    @rm_data = response['results']
  end
end
