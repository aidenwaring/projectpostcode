class AccountsController < ApplicationController
  before_action :authenticate_account!
  
  def index
    #user page
    @accounts = Account.where(account_id: current_account.id)
  end

  def show
  end

  
end
