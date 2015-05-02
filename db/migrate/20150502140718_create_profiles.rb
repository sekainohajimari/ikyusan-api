class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.string :display_id
      t.string :display_name
      t.string :affiliation
      t.string :place
      t.string :website
      t.string :introduction

      t.timestamps null: false
    end
  end
end
