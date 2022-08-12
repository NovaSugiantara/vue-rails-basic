require "test_helper"

class LogbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logbook = logbooks(:one)
  end

  test "should get index" do
    get logbooks_url, as: :json
    assert_response :success
  end

  test "should create logbook" do
    assert_difference("Logbook.count") do
      post logbooks_url, params: { logbook: { date: @logbook.date, description: @logbook.description, member_id: @logbook.member_id, title: @logbook.title, users_id: @logbook.users_id } }, as: :json
    end

    assert_response :created
  end

  test "should show logbook" do
    get logbook_url(@logbook), as: :json
    assert_response :success
  end

  test "should update logbook" do
    patch logbook_url(@logbook), params: { logbook: { date: @logbook.date, description: @logbook.description, member_id: @logbook.member_id, title: @logbook.title, users_id: @logbook.users_id } }, as: :json
    assert_response :success
  end

  test "should destroy logbook" do
    assert_difference("Logbook.count", -1) do
      delete logbook_url(@logbook), as: :json
    end

    assert_response :no_content
  end
end
