class ApplicationController < ActionController::Base
  # Redirects user to their own Posts page after login
  def after_sign_in_path_for(resource)
    posts_path #your path
  end
end
