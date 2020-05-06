class DrinksController < ApplicationController
    def index
        drinks = Drink.all
        render json: drinks, except: [:created_at, :updated_at]
    end

    def show
        drink = Drink.find(params[:id])
        render json: drink, except: [:created_at, :updated_at]
    end

    def destroy
        drink = Drink.find(params[:id])
        drink.delete()
        render json: {message: "Drink deleted"}
    end

    # def new
    #     drink = Drink.new()
    # end

    def create
        drink = Drink.create(drink_params)
        render json: {message: "Added to database"}
    end

    def update
        drink = Drink.find(params[:id])
        drink.update(drink_params)
        render json: {message: "Drink Updated"}
    end

    private
    
    def drink_params
        params.require(:drink).permit(:name, :ingredients, :steps, :image)
    end

end
