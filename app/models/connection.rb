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

class Connection < ActiveRecord::Base
  attr_accessible :connection_code, :user_id
end
