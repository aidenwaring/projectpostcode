class PublicController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def splash
  end
end
