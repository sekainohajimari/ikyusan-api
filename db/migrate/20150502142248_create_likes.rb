class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :idea, index: true
      t.integer :liker_id  
      t.column :num, :smallint

      t.timestamps null: false
    end
  end
end
