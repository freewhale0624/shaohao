class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title,    null: false
      t.string :content
      t.belongs_to :user, null: false,  index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :users
  end
end
