class CreateLessonWords < ActiveRecord::Migration
  def change
    create_table :lesson_words do |t|
      t.integer :lesson_id, null: false
      t.integer :word_id, null: false
      t.integer :word_answer_id, null: false
      t.string :correct, null: false

      t.timestamps null: false
    end
  end
end
