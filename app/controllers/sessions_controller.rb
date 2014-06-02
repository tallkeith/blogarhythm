class SessionsController < ApplicationController
	

	def create
	  	if signed_in?
	  		User.get_provider(env["omniauth.auth"],@current_user)
	  		redirect_to root_url
	  	else
		    user = User.create_with_omniauth(env["omniauth.auth"])
		    session[:user_id] = user.id
		    User.get_provider(env["omniauth.auth"],user)
		    redirect_to root_url
		end
	end

	

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end