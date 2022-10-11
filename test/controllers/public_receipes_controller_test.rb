require 'test_helper'

class PublicReceipesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get public_receipes_index_url
    assert_response :success
  end
end
