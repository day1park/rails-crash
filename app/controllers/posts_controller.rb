class PostsController < ApplicationController
  def index

  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def create
    # render plain: params[:post].inspect 
    @post = Post.new(post_params)

    @post.save
    redirect_to @post #redirect to show view
  end

  #private method with the params the post will take
  private def post_params
    params.require(:post).permit(:title, :body)
  end
end
