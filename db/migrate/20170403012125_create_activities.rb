class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :action_id, null: false
      t.integer :user_id, null: false
      t.string :action_type, null: false

      t.timestamps null: false
    end
  end
end
