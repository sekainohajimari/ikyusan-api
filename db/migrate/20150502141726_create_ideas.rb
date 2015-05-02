class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.references :topic, index: true
      t.integer :poster_id
      t.string :content
      t.column :anonymity, :tinyint

      t.timestamps null: false
    end
  end
end
