class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :uid
      t.string :oauth_token
      t.string :oauth_expires_at
      t.string :service
      t.integer :user_id

      t.timestamps
    end
  end
end
