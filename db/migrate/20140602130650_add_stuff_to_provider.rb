class AddStuffToProvider < ActiveRecord::Migration
  def change
    add_column :providers, :oauth_token, :string
    add_column :providers, :oauth_expires_at, :string
    add_column :providers, :user_id, :string
    add_column :providers, :service, :string
  end
end
