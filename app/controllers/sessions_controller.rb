class SessionsController < ApplicationController

def new
end

def create
	user = User.find_by_username(params[:username])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id
		redirect_to user_path(user)
	else
		flash[:alert] = "Username or Password is incorrect"
		render :new
	end
end

def destroy
	session[:user_id] = nil
	redirect_to root_path
end

end
