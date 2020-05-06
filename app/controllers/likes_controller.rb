class LikesController < ApplicationController

    def index
        likes = Like.all
        render json: likes
    end

    def create
        like = Like.create(params.require(:like).permit(:user_id, :drink_id))
        render json: like
    end

end