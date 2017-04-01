class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :result, null: false
      t.integer :user_id, null: false
      t.integer :category_id, null: false

      t.timestamps null: false
    end
  end
end
