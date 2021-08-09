class Api::V1::UsersController < Api::V1::BaseController
  def index
    @posts = policy_scope(current_user.posts)
  end
end
