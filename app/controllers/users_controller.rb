class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end


    def create
        # byebug
        user = User.new(
            email: params[:email],
            name: params[:name],
            company: params[:company],
            bio: params[:bio],
            twitter_handle: params[:twitter_handle],
            image_url: params[:image_url],
            password: params[:password]
        )
        if user.save
            token = encode_token(user.id)
            render json: {user: user, token: token}
        else 
            render json: {errors: user.errors.full_messages}
        end
    end


    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.save
            render json: user
        else
            render json: { errors: user.errors.full_messages }
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:email, :name, :twitter_handle, :company, :bio, :image_url)
    end

end