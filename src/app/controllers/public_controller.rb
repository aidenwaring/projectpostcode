class PublicController < ApplicationController
  before_action :authenticate_account!
  
  def index
    @posts = Post.all
  end
end
