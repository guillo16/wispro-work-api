require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = User.new(email: "user@test.com", password: "123456", role_level: 1)

  end

  test "should be valid if all fields are set" do
    assert @user.valid?
  end

  test "should be invalid if email is nil" do
    @user.email = nil

    assert_not @user.valid?
  end

end
