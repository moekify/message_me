require 'test_helper'

class ChatroomControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create(username: "Mirko", password:"password")
  end

  test "should get index" do
    get root_path
    assert_response :success
  end

  # test "a new message should show up in the chatroom" do
    
  #   assert_difference 'Message.count', 1 do
  #     post Message.new(body: "Cool", user_id: @user)
  #   end
  #   get root_path
  #   assert_select "Test", body.response
  # end

end
