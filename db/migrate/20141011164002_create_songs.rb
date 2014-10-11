class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :title
      t.text :link
      t.string :user_id

      t.timestamps
    end
  end
end
