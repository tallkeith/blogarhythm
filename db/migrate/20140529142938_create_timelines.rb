class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.integer :user_id
      t.string :imageurl
      t.string :dateofimage
      t.string :sourceofimage
      t.integer :numcomments
      t.integer :likes
      t.integer :shares

      t.timestamps
    end
  end
end
