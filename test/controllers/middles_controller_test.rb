require 'test_helper'

class MiddlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @middle = middles(:one)
  end

  test "should get index" do
    get middles_url
    assert_response :success
  end

  test "should get new" do
    get new_middle_url
    assert_response :success
  end

  test "should create middle" do
    assert_difference('Middle.count') do
      post middles_url, params: { middle: { Arabic: @middle.Arabic, English: @middle.English, Islamiat: @middle.Islamiat, Math: @middle.Math, Pak_studies: @middle.Pak_studies, Science: @middle.Science, Urdu: @middle.Urdu } }
    end

    assert_redirected_to middle_url(Middle.last)
  end

  test "should show middle" do
    get middle_url(@middle)
    assert_response :success
  end

  test "should get edit" do
    get edit_middle_url(@middle)
    assert_response :success
  end

  test "should update middle" do
    patch middle_url(@middle), params: { middle: { Arabic: @middle.Arabic, English: @middle.English, Islamiat: @middle.Islamiat, Math: @middle.Math, Pak_studies: @middle.Pak_studies, Science: @middle.Science, Urdu: @middle.Urdu } }
    assert_redirected_to middle_url(@middle)
  end

  test "should destroy middle" do
    assert_difference('Middle.count', -1) do
      delete middle_url(@middle)
    end

    assert_redirected_to middles_url
  end
end
