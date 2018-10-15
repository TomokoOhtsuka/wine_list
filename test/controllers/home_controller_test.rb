require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Wine List"
  end
  
  test "should get top" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

end
