class Comment < ActiveRecord::Base
  belongs_to :article
  validate :check_bad_words

  def check_bad_words
    errors.add(:body, 'dirty') if body.include?('faq')
  end
end
