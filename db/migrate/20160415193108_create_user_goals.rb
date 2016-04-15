class CreateUserGoals < ActiveRecord::Migration
  def change
    create_table :user_goals do |t|
      t.references :goal, index: true
      t.string :title
      t.text :description
      t.datetime :due_date_time
      t.references :user, index: true
      t.string :category
      t.integer :points
      t.string :recurring_type
      t.references :group, index: true
      t.references :friendship, index: true
      t.boolean :is_private
      t.string :completed_status
      t.integer :times_completed
      t.time :reminder_time

      t.timestamps
    end
  end
end
