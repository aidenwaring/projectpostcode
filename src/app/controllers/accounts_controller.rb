class AccountsController < ApplicationController
  before_action :authenticate_account!

  def show
    @account = Account.find(params[:id])
  end
  
end
