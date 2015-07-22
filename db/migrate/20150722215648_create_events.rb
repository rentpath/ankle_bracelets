class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :description
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.references :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
