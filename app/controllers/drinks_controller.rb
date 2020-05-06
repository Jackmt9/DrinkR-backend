class DrinksController < ApplicationController
    def index
        options = {
            include: {
                likes: {
                    only: [:drink_id, :user_id]
                }
            },
            except: [:created_at, :updated_at]
        }
        drinks = Drink.all
        # render json: drinks, except: [:created_at, :updated_at]
        render json: drinks.to_json(options)
    end

    def show
        options = {
            include: {
                likes: {
                    only: [:drink_id, :user_id]
                }
            },
            except: [:created_at, :updated_at]
        }
        drink = Drink.find(params[:id])
        render json: drink.to_json(options)
    end

    def destroy
        drink = Drink.find(params[:id])
        drink.delete()
        render json: {message: "Drink deleted"}
    end

    def create
        drink = Drink.create(drink_params)
        render json: drink
    end

    def update
        drink = Drink.find(params[:id])
        drink.update(drink_params)
        render json: drink
    end

    private
    
    def drink_params
        params.require(:drink).permit(:name, :ingredients, :steps, :image)
    end

end
