class Comment < ActiveRecord::Base
  belongs_to :article
  validate :check_bad_words
  validate :check_saturday

  def check_bad_words
    errors.add(:body, 'dirty') if body.include?('faq')
  end
    
  def check_saturday
    errors.add(:base, 'Today St!') if Date.today.saturday?
  end
 
end
