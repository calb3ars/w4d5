class PostsController < ApplicationController
  def new
    render :new
  end


  def create
    user_id = current_user.id

    @post = Post.new(post_params)
    @post.user_id = user_id
    @post.sub_id = params[:sub_id]

    if @post.save
      render :show
    else
      flash.now[:errors] = @post.errors.full_messages
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:id])


    if @post.update(post_params)
      render :show
    else
      flash.now[:errors] = @post.errors.full_messages
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :url, :content)
  end

end
