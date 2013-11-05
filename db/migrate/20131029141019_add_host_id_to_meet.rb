class AddHostIdToMeet < ActiveRecord::Migration
  def change
    add_column :meets, :host_id, :integer
  end
end
