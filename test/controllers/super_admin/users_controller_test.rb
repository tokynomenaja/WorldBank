require 'test_helper'

class SuperAdmin::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get super_admin_users_index_url
    assert_response :success
  end

end
