require 'test_helper'

class TimelinesControllerTest < ActionController::TestCase
  setup do
    @timeline = timelines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timelines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timeline" do
    assert_difference('Timeline.count') do
      post :create, timeline: { image_date: @timeline.image_date, image_source: @timeline.image_source, image_url: @timeline.image_url, likes: @timeline.likes, number_of_comments: @timeline.number_of_comments, retweets: @timeline.retweets, shares: @timeline.shares, user: @timeline.user }
    end

    assert_redirected_to timeline_path(assigns(:timeline))
  end

  test "should show timeline" do
    get :show, id: @timeline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timeline
    assert_response :success
  end

  test "should update timeline" do
    patch :update, id: @timeline, timeline: { image_date: @timeline.image_date, image_source: @timeline.image_source, image_url: @timeline.image_url, likes: @timeline.likes, number_of_comments: @timeline.number_of_comments, retweets: @timeline.retweets, shares: @timeline.shares, user: @timeline.user }
    assert_redirected_to timeline_path(assigns(:timeline))
  end

  test "should destroy timeline" do
    assert_difference('Timeline.count', -1) do
      delete :destroy, id: @timeline
    end

    assert_redirected_to timelines_path
  end
end
