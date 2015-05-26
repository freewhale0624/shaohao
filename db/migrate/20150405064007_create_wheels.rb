class CreateWheels < ActiveRecord::Migration
  def change
    create_table :wheels do |t|
      t.belongs_to :user, index: true
      t.datetime :init_time

      t.timestamps null: false
    end
    add_foreign_key :wheels, :users
  end
end
