class Api::V1::PostulationsController < Api::V1::BaseController
  def index
    @postsulations = Postulation.all
  end

  def show
  end

  def create
  end

  def destroy
  end
end
