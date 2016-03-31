FactoryGirl.define do
  factory :answer do
    answer_text "MyString"
    right_or_wrong false
    quiz_id nil
  end
end
