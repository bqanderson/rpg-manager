class AbilitiesController < ApplicationController
  def create
    @character = Character.find(params[:id])
    @ability = @character.abilities.create(ability_params)

    if @ability.save
      render json: @abilities
    else
      render json: @ability.errors, status: :unprocessable_entity
    end
  end

  private
    def ability_params
      params.require(:ability).permit(
        :str,
        :str_mod,
        :dex,
        :dex_mod,
        :con,
        :con_mod,
        :int,
        :int_mod,
        :wis,
        :wis_mod,
        :cha,
        :cha_mod
      )
end
