require 'spec_helper'

describe Photograph do
  it "is valid with a path" do
  	#photograph = FactoryGirl.build(:photograph)
  	expect(create(:photograph)).to be_valid
  end

  it "is invalid without a path" do
  	expect(build(:photograph, path: nil)).to have(1).errors_on(:path)
  end
  it "is invalid without a filename" do
  	expect(build(:photograph, filename: nil)).to have(1).errors_on(:filename)
  end
  it "is invalid without a project_id" do
  	expect(build(:photograph, project_id: nil)).to have(1).errors_on(:project_id)
  end
end
