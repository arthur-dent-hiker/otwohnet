class Connectionship < ActiveRecord::Base
	belongs_to :user
	belongs_to :connection, :class_name => "User"
  attr_accessible :connection_id, :user_id
end
