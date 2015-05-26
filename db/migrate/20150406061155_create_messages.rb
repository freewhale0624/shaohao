class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :nickname,     null: false
      t.string :msg,          null: false
      t.integer :level,       null: false, default: 2
      t.integer :status,      null: false, default: 0

      t.timestamps null: false
    end
  end
end
