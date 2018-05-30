class CreateUserLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_likes do |t|
      t.integer :user_id
      t.integer :like_id

      t.timestamps
    end
  end
end
