require 'test_helper'

class WordsControllerTest < ActionController::TestCase
  setup do
    @word = words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:words)
  end

  test "should create word" do
    assert_difference('Word.count') do
      post :create, word: { name: @word.name }
    end

    assert_response 201
  end

  test "should show word" do
    get :show, id: @word
    assert_response :success
  end

  test "should update word" do
    put :update, id: @word, word: { name: @word.name }
    assert_response 204
  end

  test "should destroy word" do
    assert_difference('Word.count', -1) do
      delete :destroy, id: @word
    end

    assert_response 204
  end
end
