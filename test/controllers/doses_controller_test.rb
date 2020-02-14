require 'test_helper'

class DosesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get doses_create_url
    assert_response :success
  end

end
