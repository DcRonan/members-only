class PostsController < ApplicationController
  before_action :set_post, only: [:show, :create]
  before_action :authenticate_user!, only: %i[new create]

  def index
    @posts = Post.all.order("created_at DESC")
    @post = Post.new
  end
  
  def create
    
  end

  def new
    @post = current_user.posts.build
  end


private

def set_post
  @post = Post.find(params[:id])
end



def post_params
  params.require(:post).permit(:post)
end


end
