class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer_text, :null => false
      t.boolean :right_or_wrong, :null => false
      t.belongs_to :quiz, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
