class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.references :group, index: true
      t.references :user, index: true
      t.column :role, :tinyint
      t.column :status, :tinyint

      t.timestamps null: false
    end
  end
end
