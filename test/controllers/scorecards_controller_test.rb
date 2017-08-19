require 'test_helper'

class ScorecardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scorecard = scorecards(:one)
  end

  test "should get index" do
    get scorecards_url
    assert_response :success
  end

  test "should get new" do
    get new_scorecard_url
    assert_response :success
  end

  test "should show scorecard" do
    get scorecard_url(@scorecard)
    assert_response :success
  end

  test "should get edit" do
    get edit_scorecard_url(@scorecard)
    assert_response :success
  end

  test "should destroy scorecard" do
    assert_difference('Scorecard.count', -1) do
      delete scorecard_url(@scorecard)
    end

    assert_redirected_to scorecards_url
  end
end
