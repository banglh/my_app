class SessionsController < ApplicationController
	def new
	end

	def create
		# render 'new'
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			# sign in the user and redirect to the user profile page
			sign_in user
			redirect_back_or user
		else
			# show error messages
			flash.now[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
