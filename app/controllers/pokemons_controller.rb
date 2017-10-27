class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer_id = current_trainer.id
  	pokemon.save
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10
    if pokemon.health <= 0
      pokemon.destroy
    end
    pokemon.save
    redirect_to trainer_path(current_trainer)

  end

  def new
    @okemon = Pokemon.new

  end

  def create
    @pokemon = Pokemon.new(name: params[:pokemon][:name])
    @pokemon.level = 1
    @poekemon.health = 100
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to trainer_path(current_trainer)
  end
end
