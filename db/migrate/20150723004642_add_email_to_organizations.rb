class AddEmailToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :email_address, :string
  end
end
