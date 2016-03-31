class Answer < ActiveRecord::Base
  belongs_to :quiz

  validates :answer_text, presence: true, length: { in: 1..30 }
  validates :quiz_id, presence: true
  validate :right_answer_is_only_one_by_one_quiz

  def right_answer_is_only_one_by_one_quiz
    if quiz.present? && right_or_wrong && quiz.answers.where(right_or_wrong: true) > 0
      error.add(:right_answer_number, "1つの問題に対して正解は1つだけです")
    end
  end
end
