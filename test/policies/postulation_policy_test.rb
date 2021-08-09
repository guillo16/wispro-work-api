require 'test_helper'

class PostulationPolicyTest < ActiveSupport::TestCase
  setup do
    @postulation = postulations(:first_postulation)
  end
  def test_scope
    scoped_collection = Pundit.policy_scope!(users(:person), Postulation)
    assert_includes scoped_collection, @postulation
  end

  def test_show
    assert_permit(users(:person), @postulation, :show?)
  end

  def test_create
    assert_forbid(users(:company), @postulation, :create?)
    assert_permit(users(:person), @postulation, :create?)
  end

  def test_update
    assert_forbid(users(:person), @postulation, :update?)
    assert_permit(users(:company), @postulation, :update?)
  end


 def test_destroy
   assert_permit(users(:person), @postulation, :destroy?)
   assert_permit(users(:company), @postulation, :destroy?)
 end
end
