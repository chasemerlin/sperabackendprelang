class CreateResourcePages < ActiveRecord::Migration
  def change
    create_table :resource_pages do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
