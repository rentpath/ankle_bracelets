class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :title, null: false
      t.integer :slots, null: false, default: 0
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
