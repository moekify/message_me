require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(username: "Mirko", password:"password")
  end
  test "user should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.username = " "
    assert_not @user.valid?
  end
 
  test "name should be unique" do
    @user.save
    user2 = User.new(username: "Mirko", password: "password")
    assert_not user2.valid?
  end

  test "name should not be too long" do
    @user.username = "a" * 26
    assert_not @user.valid?
  end

  test "name should not be too short" do
  @user.username = "aa" 
  assert_not @user.valid?
  end 
end
