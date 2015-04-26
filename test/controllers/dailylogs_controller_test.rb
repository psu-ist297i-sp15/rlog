require 'test_helper'

class DailylogsControllerTest < ActionController::TestCase
  setup do
    @dailylog = dailylogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dailylogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dailylog" do
    assert_difference('Dailylog.count') do
      post :create, dailylog: { comments: @dailylog.comments, day: @dailylog.day, distance: @dailylog.distance, duration: @dailylog.duration, notes: @dailylog.notes, performance: @dailylog.performance, workout_id: @dailylog.workout_id }
    end

    assert_redirected_to dailylog_path(assigns(:dailylog))
  end

  test "should show dailylog" do
    get :show, id: @dailylog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dailylog
    assert_response :success
  end

  test "should update dailylog" do
    patch :update, id: @dailylog, dailylog: { comments: @dailylog.comments, day: @dailylog.day, distance: @dailylog.distance, duration: @dailylog.duration, notes: @dailylog.notes, performance: @dailylog.performance, workout_id: @dailylog.workout_id }
    assert_redirected_to dailylog_path(assigns(:dailylog))
  end

  test "should destroy dailylog" do
    assert_difference('Dailylog.count', -1) do
      delete :destroy, id: @dailylog
    end

    assert_redirected_to dailylogs_path
  end
end
