require 'test_helper'

class SuperAdmin::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get super_admin_contacts_index_url
    assert_response :success
  end

  test "should get show" do
    get super_admin_contacts_show_url
    assert_response :success
  end

end
