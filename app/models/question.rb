class Question < ActiveRecord::Base
  belongs_to :user
  has_many :responses
  has_many :tags

  acts_as_votable

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end

end
