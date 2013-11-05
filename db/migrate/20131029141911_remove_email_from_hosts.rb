class RemoveEmailFromHosts < ActiveRecord::Migration
  def up
    remove_column :hosts, :email
  end

  def down
    add_column :hosts, :email, :string
  end
end
