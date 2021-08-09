require 'test_helper'

class PostulationTest < ActiveSupport::TestCase
  setup do

    @postulation = Postulation.new(
      description: "The best candidate ever",
      user: users(:person),
      post: posts(:first_post)
    )
  end

  test "should be valid if all fields are set" do
    assert @postulation.valid?, "Should be valid if all required fields are set"
  end

  test "should be invalid if description is nil" do
    @postulation.description = nil

    assert_not @postulation.valid?
  end

  test "should be invalid if user is nil" do
    @postulation.user = nil

    assert_not @postulation.valid?
  end

  test "should be invalid if post is nil" do
    @postulation.post = nil

    assert_not @postulation.valid?
  end

end
