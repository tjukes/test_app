require 'test_helper'

class SnurksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snurk = snurks(:one)
  end

  test "should get index" do
    get snurks_url, as: :json
    assert_response :success
  end

  test "should create snurk" do
    assert_difference('Snurk.count') do
      post snurks_url, params: { snurk: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show snurk" do
    get snurk_url(@snurk), as: :json
    assert_response :success
  end

  test "should update snurk" do
    patch snurk_url(@snurk), params: { snurk: {  } }, as: :json
    assert_response 200
  end

  test "should destroy snurk" do
    assert_difference('Snurk.count', -1) do
      delete snurk_url(@snurk), as: :json
    end

    assert_response 204
  end
end
