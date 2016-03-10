class QuizTitle < ActiveRecord::Base
  has_many :quizzes

  validates :id, presence: true, uniqueness: true
  validates :title, presence: true
  validates :url, presence: true, uniqueness: true

end
