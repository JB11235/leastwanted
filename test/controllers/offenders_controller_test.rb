require "test_helper"

class OffendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offender = offenders(:one)
  end

  test "should get index" do
    get offenders_url, as: :json
    assert_response :success
  end

  test "should create offender" do
    assert_difference("Offender.count") do
      post offenders_url, params: { offender: { name: @offender.name } }, as: :json
    end

    assert_response :created
  end

  test "should show offender" do
    get offender_url(@offender), as: :json
    assert_response :success
  end

  test "should update offender" do
    patch offender_url(@offender), params: { offender: { name: @offender.name } }, as: :json
    assert_response :success
  end

  test "should destroy offender" do
    assert_difference("Offender.count", -1) do
      delete offender_url(@offender), as: :json
    end

    assert_response :no_content
  end
end
