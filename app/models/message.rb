class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  belongs_to :friendship
  belongs_to :resource_page
  belongs_to :resource_page
end
