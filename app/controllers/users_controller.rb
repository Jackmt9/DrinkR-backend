class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.find_or_create_by(params.require(:user).permit(:email))
        render json: user
    end
end