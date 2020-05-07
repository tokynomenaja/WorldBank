require 'test_helper'

class SuperAdmin::UpdateProjetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get super_admin_update_projets_index_url
    assert_response :success
  end

  test "should get show" do
    get super_admin_update_projets_show_url
    assert_response :success
  end

  test "should get edit" do
    get super_admin_update_projets_edit_url
    assert_response :success
  end

  test "should get update" do
    get super_admin_update_projets_update_url
    assert_response :success
  end

  test "should get create" do
    get super_admin_update_projets_create_url
    assert_response :success
  end

  test "should get new" do
    get super_admin_update_projets_new_url
    assert_response :success
  end

end
