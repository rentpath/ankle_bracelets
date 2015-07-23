class AddOwnerToOrganization < ActiveRecord::Migration
  def change
  	# add_foreign_key :organizations, :users, column: :owner_id, primary_key: "id"
  	add_column :organizations, :owner_id, :integer
  	add_index :organizations, :owner_id
  	add_foreign_key :organizations, :users, column: :owner_id
  end
end
