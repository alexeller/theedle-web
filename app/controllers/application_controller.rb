class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

#  before_filter :update_sanitized_params, if: :devise_controller?
#
#  def update_sanitized_params
#    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email, :password, :confirmation_password, :remember_me)}
#  end

before_filter :configure_devise_params, if: :devise_controller?

def configure_devise_params
  devise_parameter_sanitizer.for(:sign_up) do |u|
    u.permit(:name, :email, :password, :password_confirmation, :remember_me)
  end
end
end
