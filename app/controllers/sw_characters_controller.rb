class SwCharactersController < ApplicationController
  before_action :fetch_data, only: %i[index show]

  def index
  end

  def show
    @sw_character = @people_data[params[:id].to_i]
  end

  private

  def fetch_data
    responce = HTTParty.get('https://swapi.dev/api/people/')
    @people_data = responce['results']
  end
end
