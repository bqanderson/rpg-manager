class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @characters
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    head :no_content
  end

  private
    def character_params
      params.require(:character).permit(:name, :class_type, :level, :race, :alignment)
    end
end
