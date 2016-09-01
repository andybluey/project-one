class Comment < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  acts_as_votable
  validates :body, presence: true,
  length: { minimum: 1 }

  def get_total_upvotes
    self.cached_votes_total
  end
end
