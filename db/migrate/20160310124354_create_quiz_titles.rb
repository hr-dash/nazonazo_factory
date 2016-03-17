class CreateQuizTitles < ActiveRecord::Migration
  def change
    create_table :quiz_titles do |t|
      t.string :title, null: false
      t.text :url, null: false
      t.timestamps null: false
    end
  end
end
