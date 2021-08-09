require 'test_helper'

class PostTest < ActiveSupport::TestCase
  setup do
    @post = Post.new(title: "Ruby developer",
      content: "wonderfull opportunity",
      user: users(:company)
    )
  end

  test "should be valid" do
    assert @post.valid?, "Should be valid if all required fields are set"
  end

  test "should be invalid if title is nil" do
    @post.title = nil

    assert_not @post.valid?
  end

  test "should be invalid if content is nil" do
    @post.content = nil

    assert_not @post.valid?
  end

  test "should be invalid if user is nil" do
    @post.user = nil

    assert_not @post.valid?
  end

end
