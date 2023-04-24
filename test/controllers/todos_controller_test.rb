require 'test_helper'

class Api::V1::TodosControllerTest < ActionDispatch::IntegrationTest
  def setup
    @todo = todos(:one)
  end

  test 'should get index' do
    get api_v1_todos_url
    assert_response :success
  end

  test 'should create todo' do
    assert_difference('Todo.count') do
      post api_v1_todos_url, params: { todo: { title: 'Test ToDo', completed: false } }
    end

    assert_response :created
  end

  test 'should show todo' do
    get api_v1_todo_url(@todo)
    assert_response :success
  end

  test 'should update todo' do
    patch api_v1_todo_url(@todo), params: { todo: { title: 'Updated ToDo', completed: true } }
    assert_response :success
  end

  test 'should destroy todo' do
    assert_difference('Todo.count', -1) do
      delete api_v1_todo_url(@todo)
    end

    assert_response :no_content
  end
end
