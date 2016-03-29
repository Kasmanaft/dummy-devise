require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "doesn't valid when test contain bad word" do
    comment = build :comment, body: 'Blah blah faq'
    Timecop.freeze(Date.local(2016, 03, 19)) do
      comment.save
    # comment.valid?.should be false
      expect(:base, 'Today St!') if Date.today.saturday?
    end
  end
end
