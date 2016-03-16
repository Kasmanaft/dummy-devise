require 'rails_helper'

describe "articles/show", type: :view do
  let!(:article) { create :article }

  before(:each) do
    @article = assign(:article, article)
  end

  it "renders attributes in <p>" do
    # @article = article
    render
    assert_select ".panel .panel-default .panel-body", text: "Article Text".to_s, count: 1
  end

  xit 'shows comments for this article' do
    comment = create :comment, article: article
  end
end
