class SwCharactersController < ApplicationController
  before_action :fetch_data, only: %i[index show]

  def index
  end

  def show
    @sw_character = @people_data[params[:id].to_i]
  end

  private

  def fetch_data
    response = HTTParty.get('https://swapi.dev/api/people/')
    @people_data = response['results']
  end
end
