require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @Task = Tasks(:one)
  end

  test "should get index" do
    get Tasks_url, as: :json
    assert_response :success
  end

  test "should create Task" do
    assert_difference('Task.count') do
      post Tasks_url, params: { Task: { email: @Task.email, name: @Task.name } }, as: :json
    end

    assert_response 201
  end

  test "should show Task" do
    get Task_url(@Task), as: :json
    assert_response :success
  end

  test "should update Task" do
    patch Task_url(@Task), params: { Task: { email: @Task.email, name: @Task.name } }, as: :json
    assert_response 200
  end

  test "should destroy Task" do
    assert_difference('Task.count', -1) do
      delete Task_url(@Task), as: :json
    end

    assert_response 204
  end
end
