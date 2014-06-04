class SessionsController < ApplicationController

	def create

		User.get_provider(env["omniauth.auth"], current_user)
		redirect_to root_url
	end
end