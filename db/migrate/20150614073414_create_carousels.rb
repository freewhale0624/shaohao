class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :url
      t.string :priority,   default: 0
      t.string :image
      t.string :video

      t.timestamps null: false
    end
  end
end
