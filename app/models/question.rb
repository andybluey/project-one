# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ActiveRecord::Base

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :tags
  acts_as_votable

  validates :title, presence: true,
  length: { minimum: 1 }
  # validates :tag_ids, presence: true
  # Can add logic down here!!

  def self.search(search)
    where("title ILIKE ?", "%#{search}%")
    where("body ILIKE ?", "%#{search}%")
  end

  def self.get_all_votes
    all_votes = self.all.map do |q|
      q.get_upvotes.size
    end
    total_votes = all_votes.reduce(0, :+)
  end

end
