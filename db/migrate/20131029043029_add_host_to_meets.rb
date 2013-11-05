class AddHostToMeets < ActiveRecord::Migration
  def change
    add_column :meets, :host, :belongs_to
  end
end
