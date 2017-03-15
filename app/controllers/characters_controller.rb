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

  def edit
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @characters
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  def update
    @character = Character.find(params[:id])

    if @character.update(character_params)
      render json: @character
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
      params.require(:character).permit(
        :name,
        :class_type,
        :level,
        :race,
        :alignment,
        :deity,
        :size,
        :age,
        :gender,
        :height,
        :weight,
        :eyes,
        :hair,
        :skin,
        :bio
      )
    end
end
