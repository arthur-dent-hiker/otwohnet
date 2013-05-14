# == Schema Information
#
# Table name: connection_invitations
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  connection_code :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe Connection_Invitation do
   before(:each) do
   	@code=SecureRandom.hex(8)
    @attr = {
      :user_id => 1,
      :connection_code =>@code
    }
  end
  it "should create a new instance given a valid attribute" do
    Connection_Invitation.create!(@attr)
  end
  it "should not be valid if other code exists" do
  	Connection_Invitation.create!(@attr)
  	Connection_Invitation.create(:user_id=>3, :connection_code=>@code).should_not be_valid
  end
end