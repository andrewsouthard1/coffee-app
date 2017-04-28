require 'test_helper'

class WebClientBeersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get web_client_beers_index_url
    assert_response :success
  end

end
