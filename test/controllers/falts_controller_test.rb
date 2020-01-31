require 'test_helper'

class FaltsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @falt = falts(:one)
  end

  test "should get index" do
    get falts_url
    assert_response :success
  end

  test "should get new" do
    get new_falt_url
    assert_response :success
  end

  test "should create falt" do
    assert_difference('Falt.count') do
      post falts_url, params: { falt: {  } }
    end

    assert_redirected_to falt_url(Falt.last)
  end

  test "should show falt" do
    get falt_url(@falt)
    assert_response :success
  end

  test "should get edit" do
    get edit_falt_url(@falt)
    assert_response :success
  end

  test "should update falt" do
    patch falt_url(@falt), params: { falt: {  } }
    assert_redirected_to falt_url(@falt)
  end

  test "should destroy falt" do
    assert_difference('Falt.count', -1) do
      delete falt_url(@falt)
    end

    assert_redirected_to falts_url
  end
end
