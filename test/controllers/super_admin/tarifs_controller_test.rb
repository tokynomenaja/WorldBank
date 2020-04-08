require 'test_helper'

class SuperAdmin::TarifsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get super_admin_tarifs_index_url
    assert_response :success
  end

  test "should get edit" do
    get super_admin_tarifs_edit_url
    assert_response :success
  end

  test "should get update" do
    get super_admin_tarifs_update_url
    assert_response :success
  end

  test "should get new" do
    get super_admin_tarifs_new_url
    assert_response :success
  end

end
