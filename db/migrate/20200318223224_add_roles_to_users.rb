class AddRolesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :superadmin_role, :boolean, default: false
    add_column :usuarios, :user_role, :boolean, default: true
  end
end
