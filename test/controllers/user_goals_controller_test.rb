require 'test_helper'

class UserGoalsControllerTest < ActionController::TestCase
  setup do
    @user_goal = user_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_goal" do
    assert_difference('UserGoal.count') do
      post :create, user_goal: { category: @user_goal.category, completed_status: @user_goal.completed_status, description: @user_goal.description, due_date_time: @user_goal.due_date_time, friendship_id: @user_goal.friendship_id, goal_id: @user_goal.goal_id, group_id: @user_goal.group_id, is_private: @user_goal.is_private, points: @user_goal.points, recurring_type: @user_goal.recurring_type, reminder_time: @user_goal.reminder_time, times_completed: @user_goal.times_completed, title: @user_goal.title, user_id: @user_goal.user_id }
    end

    assert_redirected_to user_goal_path(assigns(:user_goal))
  end

  test "should show user_goal" do
    get :show, id: @user_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_goal
    assert_response :success
  end

  test "should update user_goal" do
    patch :update, id: @user_goal, user_goal: { category: @user_goal.category, completed_status: @user_goal.completed_status, description: @user_goal.description, due_date_time: @user_goal.due_date_time, friendship_id: @user_goal.friendship_id, goal_id: @user_goal.goal_id, group_id: @user_goal.group_id, is_private: @user_goal.is_private, points: @user_goal.points, recurring_type: @user_goal.recurring_type, reminder_time: @user_goal.reminder_time, times_completed: @user_goal.times_completed, title: @user_goal.title, user_id: @user_goal.user_id }
    assert_redirected_to user_goal_path(assigns(:user_goal))
  end

  test "should destroy user_goal" do
    assert_difference('UserGoal.count', -1) do
      delete :destroy, id: @user_goal
    end

    assert_redirected_to user_goals_path
  end
end
