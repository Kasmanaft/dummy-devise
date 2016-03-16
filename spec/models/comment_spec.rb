require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "doesn't valid when test contain bad word" do
    comment = build :comment, body: 'Blah blah faq'
    comment.save
    # comment.valid?.should be false
    expect(comment.errors[:body]).to eq ['dirty']
  end
end
