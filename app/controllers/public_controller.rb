class PublicController < ApplicationController
  def index
    @posts = Post.all
    @accounts = Account.all
  end
  
  def splash
  end
end
