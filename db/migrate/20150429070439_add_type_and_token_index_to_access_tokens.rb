class AddTypeAndTokenIndexToAccessTokens < ActiveRecord::Migration
  def change
    add_index :access_tokens, [:type, :token], unique: true
  end
end
