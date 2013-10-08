class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.string :name
      t.date :date
      t.string :location

      t.timestamps
    end
  end
end
