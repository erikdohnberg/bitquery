class SessionsController < ApplicationController

	# Login page
 	def new
  	end

	# Login submit action
	def create
		@user = login(params[:email], params[:password])
		if @user
			redirect_to :root, :notice => "Welcome back #{@user.first_name}"
		else
			flash.now[:alert] = "Invalid credentials. Try again."
			render :new
		end
	end

	# Logout submit
 	def destroy
		logout
		redirect_to :root, notice: "Hope you have a great class!"
	end
end