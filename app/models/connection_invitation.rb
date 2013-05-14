# == Schema Information
#
# Table name: connections
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  connection_code :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Connection_Invitation < ActiveRecord::Base
  attr_accessible :connection_code, :user_id
  validates :connection_code, :uniqueness => true
end