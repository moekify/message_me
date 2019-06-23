require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: "Mirko", password:"password")
    @message = Message.new(body: "Test", user_id: @user.id)
  end
  test "message should be valid" do
    assert @message.valid?
  end

  test "body should be present" do
    @message.body = " "
    assert_not @message.valid?
  end
end
