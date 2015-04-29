class CreateAccessTokens < ActiveRecord::Migration
  def change
    create_table :access_tokens do |t|
      t.integer :user_id
      t.string :type
      t.string :token
      t.datetime :expires_at

      t.timestamps null: false
    end
  end
end
