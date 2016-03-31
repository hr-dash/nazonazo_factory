require 'rails_helper'

RSpec.describe Answer, type: :model do
  before do
    @quiz_title1 = FactoryGirl.create(:quiz_title, id: 1)
    @quiz1       = FactoryGirl.create(:quiz, id: 1 , quiz_title_id: 1)
    @answer1     = FactoryGirl.create(:answer, id: 1, quiz_id: 1, right_or_wrong: false)
  end

  subject { @answer1 }

  describe "answer_text validate" do
    it { should validate_presence_of(:answer_text) }
    it { should ensure_length_of(:answer_text).is_at_least(1) }
    it { should ensure_length_of(:answer_text).is_at_most(30) }
  end

  describe "answer_text validate" do
    it { should validate_presence_of(:quiz_id) }
  end
end
