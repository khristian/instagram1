require 'test_helper'

class GettweetsControllerTest < ActionController::TestCase
  setup do
    @gettweet = gettweets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gettweets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gettweet" do
    assert_difference('Gettweet.count') do
      post :create, gettweet: { category: @gettweet.category, date: @gettweet.date, store_id: @gettweet.store_id, tags: @gettweet.tags, tweet: @gettweet.tweet, user_id: @gettweet.user_id }
    end

    assert_redirected_to gettweet_path(assigns(:gettweet))
  end

  test "should show gettweet" do
    get :show, id: @gettweet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gettweet
    assert_response :success
  end

  test "should update gettweet" do
    put :update, id: @gettweet, gettweet: { category: @gettweet.category, date: @gettweet.date, store_id: @gettweet.store_id, tags: @gettweet.tags, tweet: @gettweet.tweet, user_id: @gettweet.user_id }
    assert_redirected_to gettweet_path(assigns(:gettweet))
  end

  test "should destroy gettweet" do
    assert_difference('Gettweet.count', -1) do
      delete :destroy, id: @gettweet
    end

    assert_redirected_to gettweets_path
  end
end
