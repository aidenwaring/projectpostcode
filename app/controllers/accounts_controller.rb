class AccountsController < ApplicationController
  before_action :authenticate_account!
  
  def index
    #user page
  end

  def show
    #user profile
  end
end
