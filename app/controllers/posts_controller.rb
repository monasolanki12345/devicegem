class PostsController < ApplicationController
  def index
    @posts= Post.all
    authorize @posts
  end

  def destroy
    @post = Post.find(params[:id])
    authorize @post
    @post.destroy
    redirect_to root_path
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
