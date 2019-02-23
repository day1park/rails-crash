class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    # render plain: params[:post].inspect 
    @post = Post.new(post_params)

    if(@post.save)
      redirect_to @post #redirect to show view
    else 
      render 'new'
    end
  end

  #private method with the params the post will take
  private def post_params
    params.require(:post).permit(:title, :body)
  end
end
