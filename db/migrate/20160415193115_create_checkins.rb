class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :mood
      t.boolean :is_sober
      t.boolean :needs_help
      t.text :content
      t.references :user, index: true
      t.boolean :is_private

      t.timestamps
    end
  end
end
