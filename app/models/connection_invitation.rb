# == Schema Information
#
# Table name: connection_invitations
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  connection_code :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ConnectionInvitation < ActiveRecord::Base
  attr_accessible :connection_code, :user_id
  belongs_to :user
  validates :connection_code, :uniqueness => true
end
