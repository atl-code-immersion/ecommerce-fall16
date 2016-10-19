require 'test_helper'

class AdministrationControllerTest < ActionDispatch::IntegrationTest
  test "should get user_list" do
    get administration_user_list_url
    assert_response :success
  end

end
