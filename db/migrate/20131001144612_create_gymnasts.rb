class CreateGymnasts < ActiveRecord::Migration
  def change
    create_table :gymnasts do |t|
      t.string :name
      t.string :college
      t.integer :class

      t.timestamps
    end
  end
end
