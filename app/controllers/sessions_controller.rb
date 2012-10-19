class SessionsController < ApplicationController

	def create
	   #To view contents of omniauth auth hash
	   #raise env["omniauth.auth"].to_yaml

	   #User model "from_omniauth" method
	   user = User.from_omniauth(env["omniauth.auth"])
	   session[:user_id] = user.id 
	   #redirect_to root_url, notice: "Signed in!"
	   redirect_to gettweets_path, notice: "Signed in!"

	end

	def destroy
       session[:user_id] = nil
       redirect_to gettweets_path, notice: "Signed out!"
    end

end