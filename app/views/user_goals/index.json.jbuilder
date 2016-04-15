json.array!(@user_goals) do |user_goal|
  json.extract! user_goal, :id, :goal_id, :title, :description, :due_date_time, :user_id, :category, :points, :recurring_type, :group_id, :friendship_id, :is_private, :completed_status, :times_completed, :reminder_time
  json.url user_goal_url(user_goal, format: :json)
end
