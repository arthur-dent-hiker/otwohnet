# == Schema Information
#
# Table name: connectionships
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  connection_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Connectionship < ActiveRecord::Base
	belongs_to :user
	belongs_to :connection, :class_name => "User"
  attr_accessible :connection_id, :user_id
end
