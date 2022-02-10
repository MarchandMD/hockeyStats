require 'test_helper'

class StandingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get standings_show_url
    assert_response :success
  end
end
