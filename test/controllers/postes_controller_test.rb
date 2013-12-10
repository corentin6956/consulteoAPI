require 'test_helper'

class PostesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
