class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.string :category
      t.integer :points

      t.timestamps
    end
  end
end
