# frozen_string_literal: true

class SwCharactersController < ApplicationController
  before_action :fetch_data, only: %i[index show]

  def index; end

  def show
    @sw_character = @sw_data[params[:id].to_i]
  end

  private

  def fetch_data
    response = HTTParty.get('https://akabab.github.io/starwars-api/api/all.json')
    @sw_data = response
  end
end
