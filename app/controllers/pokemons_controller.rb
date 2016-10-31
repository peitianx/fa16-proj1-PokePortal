class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to '/'
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		if @pokemon.health <= 0
			@pokemon.hidden = true	
		end
		@pokemon.save
		redirect_to trainer_path(id: @pokemon.trainer)
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new
		@pokemon.name = params[:pokemon][:name]
		@pokemon.trainer = current_trainer
		@pokemon.health = 100
		@pokemon.level = 1
		if @pokemon.save
			redirect_to trainer_path(id: @pokemon.trainer)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_path
		end
	end

	def heal
		@pokemon = Pokemon.find(params[:id])
		if @pokemon.health < 100
			@pokemon.health += 10
		else 
			@pokemon.health = 100
			flash[:success] = "This Pokemon has been fully healed."
		end
		if @pokemon.health >= 0
			@pokemon.hidden = false
		end
		@pokemon.save
		redirect_to trainer_path(id: @pokemon.trainer)
	end
end
