class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :screen_name
      t.string :screen_url
      t.integer :status

      t.timestamps null: false
    end
  end
end
