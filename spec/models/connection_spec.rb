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

require 'spec_helper'

describe Connection do
   before(:each) do
    @attr = {
      :user_id => 1,
      :connection_code =>1
    }
  end
  it "should create a new instance given a valid attribute" do
    Connection.create!(@attr)
  end
end
