class ApplicationController < ActionController::Base
  before_action :set_search
  protect_from_forgery with: :exception
  
  add_flash_types :success, :info, :warning, :danger
  
  helper_method :current_user, :logged_in?
  
   def current_user
    @current_user ||= User.find_by(id: session[:user_id])
   end
  
  def logged_in?
    !current_user.nil?
  end
  
  def set_search
    @search = Topic.search(params[:q])
    @topics = @search.result
  end
end
