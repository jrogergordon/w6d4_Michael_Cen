class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
        #.pluck(:id, :name, :email)
    end
    
    def create
        @user = User.new(user_params)
        if user.save
            redirect_to user_url(@user)
        else
            render json: @user.error.full_messages, status: :unprocessable_entity
        end
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end