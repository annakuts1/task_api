class FixName < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :api_key, :auth_token
  end
end
