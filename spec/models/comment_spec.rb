require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:comment)).to be_valid
  end
  it "is invalid without a title" do
    expect(FactoryGirl.build(:comment_without_post)).to_not be_valid
  end
end
