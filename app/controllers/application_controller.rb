class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
  end

  def json_auth
    unless current_user
      render json: {
        error: "you do not have privileges to view this content"
      }
    end
  end

  helper_method :current_user #make it available in views
end
