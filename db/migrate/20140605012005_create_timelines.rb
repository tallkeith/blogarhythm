class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :user
      t.string :image_url
      t.date :image_date
      t.string :image_source
      t.integer :likes
      t.integer :shares
      t.integer :retweets
      t.integer :number_of_comments

      t.timestamps
    end
  end
end
