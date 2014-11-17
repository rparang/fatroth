class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def signed_in_user_and_admin
    unless signed_in? && current_user.admin == true
      flash[:notice] = "Please sign in to do that"
      redirect_to root_url
     end
  end

  def signed_in?
    !current_user.nil?
  end
  
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
