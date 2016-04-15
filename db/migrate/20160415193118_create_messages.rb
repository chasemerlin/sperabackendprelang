class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.references :user, index: true
      t.references :group, index: true
      t.integer :user_recipient_id
      t.references :friendship, index: true
      t.references :resource_page, index: true
      t.references :resource_page, index: true

      t.timestamps
    end
  end
end
