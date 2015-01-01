class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    logger.info('SESSION=' + session[:user_id].to_s)
    return nil unless session[:user_id]
    @current_user ||= User.find_by_uid(session[:user_id]['uid'])
  end

  def after_sign_in_path_for(resource)
    lista_cursuri_path
  end
end
