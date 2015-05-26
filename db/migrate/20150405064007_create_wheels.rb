class CreateWheels < ActiveRecord::Migration
  def change
    create_table :wheels do |t|
      t.belongs_to :update_by, index: true
      t.datetime :init_time

      t.timestamps null: false
    end
    add_foreign_key :wheels, :update_bies
  end
end
