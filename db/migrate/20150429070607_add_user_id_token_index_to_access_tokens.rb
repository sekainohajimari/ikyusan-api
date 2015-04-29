class AddUserIdTokenIndexToAccessTokens < ActiveRecord::Migration
  def change
    add_index :access_tokens, [:type, :user_id], unique: true
  end
end
