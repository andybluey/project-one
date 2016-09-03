# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  name            :string
#  admin           :string           default("f")
#  image           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
    has_many :questions
    has_many :comments
    has_secure_password

    def get_sorted_questions
        self.questions.sort_by do |q|
            q.get_upvotes.size
        end
    end

    def get_sorted_comments
        self.comments.sort_by do |c|
            c.get_upvotes.size
        end
    end

    def get_votes
        all_votes = self.questions.map do |q|
            q.get_upvotes.size
        end
        total_votes = all_votes.reduce(0) do |sum, num|
            sum + num
        end
    end

    def get_comments_votes
        all_votes = self.comments.map do |q|
            q.get_upvotes.size
        end
        total_votes = all_votes.reduce(0) do |sum, num|
            sum + num
        end
    end

    def get_total_votes
        all_votes = self.map do |q|
            q.get_upvotes.size
        end
        total_votes = all_votes.reduce(0) do |sum, num|
            sum + num
        end
    end

end
