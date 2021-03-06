class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  helper_method :current_user, :logged_in?

def home
  render "layouts/application"
end

def current_user
  if session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
end

 def logged_in?
   !!current_user
 end

end
