class AddVolunteersShiftsTable < ActiveRecord::Migration
  def change
    create_join_table :users, :shifts do |t|
      t.index [:user_id, :shift_id]
      t.index [:shift_id, :user_id]
    end
  end
end
