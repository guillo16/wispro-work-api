class Api::V1::UsersController < Api::V1::BaseController
  def index
    @articles = current_user.articles
  end
end
