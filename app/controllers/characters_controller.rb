class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  private
    def character_params
      params.require(:character).permit(:name, :class_type, :level, :race, :alignment)
    end
end
