class UsersController < ApplicationController
    def index
        @users = User.all
      end
    # ​
    #   def new
    #     @user = User.new
    #   end
    # ​
    #   def create
    #     @user = User.create(name: params[:user][:name])
    #     redirect_to users_path
    #   end
    # ​
      def show
        @user = User.find(params[:id])
        @followers = @user.followers
        @followees = @user.followees
        @not_following = @user.not_following
      end
    # ​
    #   def update
    #     @user = User.find(params[:id])
    #     # byebug
    #     User.find_by(name: params[:user][:name]).followers << @user
    #     redirect_to "/users/#{@user.id}"
    #   end 
end
