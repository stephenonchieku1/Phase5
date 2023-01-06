require "test_helper"

class SaccosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sacco = saccos(:one)
  end

  test "should get index" do
    get saccos_url, as: :json
    assert_response :success
  end

  test "should create sacco" do
    assert_difference("Sacco.count") do
      post saccos_url, params: { sacco: { image_url: @sacco.image_url, name: @sacco.name } }, as: :json
    end

    assert_response :created
  end

  test "should show sacco" do
    get sacco_url(@sacco), as: :json
    assert_response :success
  end

  test "should update sacco" do
    patch sacco_url(@sacco), params: { sacco: { image_url: @sacco.image_url, name: @sacco.name } }, as: :json
    assert_response :success
  end

  test "should destroy sacco" do
    assert_difference("Sacco.count", -1) do
      delete sacco_url(@sacco), as: :json
    end

    assert_response :no_content
  end
end
