class SessionsController < ApplicationController

	# Login page
 	def new
  	end

	# Login submit action
	def create
		auth = request.env["omniauth.auth"]
		user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
		session[:user_id] = user.id
		redirect_to root_url, notice: "Signed in"
	end

	# Logout submit
 	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "Hope you have a great class!"
	end
end