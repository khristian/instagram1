class ApplicationController < ActionController::Base
  protect_from_forgery

  private
   
  #make the method available to all of the controllers. 
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  #make method available to view.
  helper_method :current_user

end
