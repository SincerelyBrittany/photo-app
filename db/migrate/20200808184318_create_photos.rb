class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :photo
      t.string :quote
      t.integer :profile_id
      t.integer :user_id
      t.timestamps
    end
  end
end
