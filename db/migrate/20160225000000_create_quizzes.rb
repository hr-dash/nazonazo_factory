class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :quiz_statement, :null => false
      t.belongs_to :quiz_title, :null => false, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
