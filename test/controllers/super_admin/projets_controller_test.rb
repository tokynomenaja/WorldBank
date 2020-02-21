require 'test_helper'

class SuperAdmin::ProjetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get super_admin_projets_index_url
    assert_response :success
  end

end
