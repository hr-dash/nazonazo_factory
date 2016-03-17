require 'rails_helper'

RSpec.describe Answer, type: :model do
  before do
    @quiz_title1 = FactoryGirl.create(:quiz_title, id: 1)
    @quiz1 = FactoryGirl.create(:quiz, id: 1 , quiz_title_id: 1)
    @answer1 = FactoryGirl.create(:answer, id: 1, quiz_id: 1)
  end

  subject { @answer1 }

  it { should respond_to(:answer_text) }
  # it { should respond_to(:right_or_wrong) }
  # it { should respond_to(:quiz_id) }
  #
  # it { should be_valid }
  #
  # describe "when answer_text is not present" do
  #   before { @answer1.answer_text = " " }
  #   it { should_not be_valid }
  # end
  #
  # describe "when right_or_wrong is not present" do
  #   before { @answer1.right_or_wrong = nil }
  #   it { should_not be_valid }
  # end
  #
  # describe "when quiz_id is not present" do
  #   before { @answer1.quiz_id = nil }
  #   it { should_not be_valid }
  # end
end
