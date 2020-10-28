class Api::V1::DrinksController < ApplicationController

    def index
        @drinks = Drink.all
        render json: @drinks, status: 200
    end

    def show
        @drink = Drink.find(params[:id])
        # render json: DrinkSerializer.new(@drinks), status: 200
        render json: @drinks, status: 200
    end 

    def create
        # binding.pry
        @drink = Drink.create(drink_params)
        render json: @drinks, status: 200
    end

    def update
        @drink = Drink.find(params[id])
        @drnk.update(drink_params)
        render json: @drinks, status: 200
    end

    def destroy
        @drink = Drink.find(params[:id])
        @drink.delete

        render json: {drinkId: @drink.id}
    end


    private
    def drink_params
        params.require(:drink).permit(:strDrink, :strInstructions)
    end
end

