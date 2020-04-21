require 'test_helper'

class BreadcrumbsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get breadcrumbs_new_url
    assert_response :success
  end

end
