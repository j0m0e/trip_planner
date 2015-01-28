class SessionsController < ApplicationController

def new
end

def create
	user = User.find_by(username: params[:username])
	if user && user.authenticate(params[:password])
		session[:current_user_id] = user.id
		redirect_to user_path(session[:current_user_id])
	else
		render :new
	end

end

def destroy
	session[:current_user_id] = nil
	redirect_to root_path
end

private
def session_params
	# maybe change login to email instead of username
	params.require(:session).permit(:username, :password)
end

end