require 'test_helper'

class WebhookControllerTest < ActionController::TestCase
  test "should get done" do
    get :done
    assert_response :success
  end

end
