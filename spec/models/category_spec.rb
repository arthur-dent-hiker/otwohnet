# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Category do
  before(:each) do
    @attr = {
      :name => "Example"
    }
  end
  it "should create a new instance given a valid attribute" do
    Category.create!(@attr)
  end
end
