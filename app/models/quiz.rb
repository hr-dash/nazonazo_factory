class Quiz < ActiveRecord::Base
  belongs_to :quiz_title
  has_many :answers

  validates :id, presence: true, uniqueness: true
  validates :quiz_statement, presence: true
  validates :quiz_title_id, presence: true
end
