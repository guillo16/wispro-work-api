class Api::V1::PostsController < Api::V1::BaseController
  before_action :set_posts, only: %w[show destroy]

  def index
    @posts = policy_scope(Post)
  end

  def show
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    authorize @post
    if @post.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @post.destroy
    authorize @post
    render :index
  end

  private

  def set_posts
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def render_error
    render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
  end
end
