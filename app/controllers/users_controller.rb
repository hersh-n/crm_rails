class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to user_path(@user)
		else
			flash.now[:alert] = "Sign up Failed"
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :username, :password_confirmation)
	end





end
