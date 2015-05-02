class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.column :membar_max_num, :smallint
      t.column :topic_max_num, :smallint

      t.timestamps null: false
    end
  end
end
