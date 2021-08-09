require 'test_helper'

class PostPolicyTest < ActiveSupport::TestCase
  setup do
    @post = posts(:first_post)
  end

  def test_create
    assert_forbid(users(:person), @post, :create?)
    assert_permit(users(:company), @post, :create?)
  end

end
