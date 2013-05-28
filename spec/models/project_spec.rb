require 'spec_helper'

describe Project do
  it "is valid with a name" do
  	project = FactoryGirl.build(:project)
  	expect(project).to be_valid
  end

  it "is invalid without a name" do
  	project = FactoryGirl.build(:project, name: nil)
  	expect(project).to have(1).errors_on(:name)
  end
end
