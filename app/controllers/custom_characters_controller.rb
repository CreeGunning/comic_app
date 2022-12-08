# frozen_string_literal: true

class CustomCharactersController < ApplicationController
  before_action :set_custom_character, only: %i[show edit update destroy]

  # GET /custom_characters or /custom_characters.json
  def index
    @custom_characters = CustomCharacter.all.order(created_at: :desc)
  end

  # GET /custom_characters/1 or /custom_characters/1.json
  def show
    @custom_character.update(views: @custom_character.views + 1)
  end

  # GET /custom_characters/new
  def new
    @custom_character = CustomCharacter.new
  end

  # GET /custom_characters/1/edit
  def edit; end

  # POST /custom_characters or /custom_characters.json
  def create
    @custom_character = CustomCharacter.new(custom_character_params)
    @custom_character.user = current_user

    respond_to do |format|
      if @custom_character.save
        format.html do
          redirect_to custom_character_url(@custom_character), notice: 'Custom character was successfully created.'
        end
        format.json { render :show, status: :created, location: @custom_character }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @custom_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_characters/1 or /custom_characters/1.json
  def update
    respond_to do |format|
      if @custom_character.update(custom_character_params)
        format.html do
          redirect_to custom_character_url(@custom_character), notice: 'Custom character was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @custom_character }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @custom_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_characters/1 or /custom_characters/1.json
  def destroy
    @custom_character.destroy

    respond_to do |format|
      format.html { redirect_to custom_characters_url, notice: 'Custom character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_custom_character
    @custom_character = CustomCharacter.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def custom_character_params
    params.require(:custom_character).permit(:name, :powers)
  end
end
