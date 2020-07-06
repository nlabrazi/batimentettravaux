require 'test_helper'

class roadworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roadwork = roadworks(:one)
  end

  test "should get index" do
    get roadworks_url
    assert_response :success
  end

  test "should get new" do
    get new_roadwork_url
    assert_response :success
  end

  test "should create roadwork" do
    assert_difference('roadwork.count') do
      post roadworks_url, params: { roadwork: { banner_url: @roadwork.banner_url, name: @roadwork.name } }
    end

    assert_redirected_to roadwork_url(roadwork.last)
  end

  test "should show roadwork" do
    get roadwork_url(@roadwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_roadwork_url(@roadwork)
    assert_response :success
  end

  test "should update roadwork" do
    patch roadwork_url(@roadwork), params: { roadwork: { banner_url: @roadwork.banner_url, name: @roadwork.name } }
    assert_redirected_to roadwork_url(@roadwork)
  end

  test "should destroy roadwork" do
    assert_difference('roadwork.count', -1) do
      delete roadwork_url(@roadwork)
    end

    assert_redirected_to roadworks_url
  end
end
