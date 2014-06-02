class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user 
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    !!current_user
  end
  helper_method :current_user, :signed_in?

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.nil? ? user : user.id
  end
  
  def facebook(auth)
    @facebook ||= Koala::Facebook::API.new(auth.credentials.token)
    puts "***********************************************"
    print @facebook
  end 
end


