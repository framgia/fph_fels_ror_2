class CreateWordAnswers < ActiveRecord::Migration
  def change
    create_table :word_answers do |t|
      t.string :content, null: false
      t.integer :word_id, null: false

      t.timestamps null: false
    end
  end
end
