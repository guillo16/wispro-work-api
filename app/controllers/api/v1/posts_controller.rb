class Api::V1::PostsController < Api::V1::BaseController
  def index
    @posts = Post.all
  end

  def show
  end

  def create
  end

  def destroy
  end
end
