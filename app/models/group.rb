class Group < ActiveRecord::Base
  has_many :group_memberships
end
