require 'test_helper'

class SnarpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snarp = snarps(:one)
  end

  test "should get index" do
    get snarps_url, as: :json
    assert_response :success
  end

  test "should create snarp" do
    assert_difference('Snarp.count') do
      post snarps_url, params: { snarp: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show snarp" do
    get snarp_url(@snarp), as: :json
    assert_response :success
  end

  test "should update snarp" do
    patch snarp_url(@snarp), params: { snarp: {  } }, as: :json
    assert_response 200
  end

  test "should destroy snarp" do
    assert_difference('Snarp.count', -1) do
      delete snarp_url(@snarp), as: :json
    end

    assert_response 204
  end
end
