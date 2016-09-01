class Tag < ActiveRecord::Base
  has_and_belongs_to_many :questions

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

end
