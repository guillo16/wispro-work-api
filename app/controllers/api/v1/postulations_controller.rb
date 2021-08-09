class Api::V1::PostulationsController < Api::V1::BaseController
  before_action :set_postulation, only: %w[show update destroy]

  def index
    @postulations = policy_scope(current_user.postulations)
  end

  def show
    authorize @postulation
  end

  def create
    @post = Post.find(params[:post_id])
    @postulation = Postulation.new(postulation_params)
    @postulation.post = @post
    @postulation.user = current_user
    authorize @postulation
    if @postulation.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    authorize @postulation
    if @postulation.update(postulation_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    authorize @postulation
    @postulation.delete
    render :index
  end

  private

  def set_postulation
    @postulation = Postulation.find(params[:id])
  end

  def postulation_params
    params.require(:postulation).permit(:description, :status)
  end

  def render_error
    render json: { errors: @postulation.errors.full_messages }, status: :unprocessable_entity
  end
end
