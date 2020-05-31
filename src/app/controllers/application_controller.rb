class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
        # Fields for sign up
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :display_name, :password) }
        # Fields for editing an existing account
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :display_name, :password, :current_password) }
    end

  # Redirects user to their own Posts page after login
  def after_sign_in_path_for(resource)
    posts_path
  end
end
