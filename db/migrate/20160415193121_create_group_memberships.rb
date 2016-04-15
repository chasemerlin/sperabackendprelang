class CreateGroupMemberships < ActiveRecord::Migration
  def change
    create_table :group_memberships do |t|
      t.string :status
      t.references :user, index: true
      t.references :group, index: true
      t.integer :inviter_id

      t.timestamps
    end
  end
end
