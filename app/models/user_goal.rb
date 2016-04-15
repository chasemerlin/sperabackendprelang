class UserGoal < ActiveRecord::Base
  belongs_to :goal
  belongs_to :user
  belongs_to :group
  belongs_to :friendship
end
