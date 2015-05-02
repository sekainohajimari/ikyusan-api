class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.references :group, index: true
      t.integer :builder_id
      t.string :name
      t.column :idea_max_num, :smallint

      t.timestamps null: false
    end
  end
end
