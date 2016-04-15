class ResourcePage < ActiveRecord::Base
  has_many :messages
  acts_as_votable 
end
