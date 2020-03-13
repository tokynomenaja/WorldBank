require 'test_helper'

class SuperAdmin::ActusControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get super_admin_actus_new_url
    assert_response :success
  end

  test "should get edit" do
    get super_admin_actus_edit_url
    assert_response :success
  end

  test "should get index" do
    get super_admin_actus_index_url
    assert_response :success
  end

end
