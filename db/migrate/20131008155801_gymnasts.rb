class Gymnasts < ActiveRecord::Migration
  def change
    create_table :gymnasts do |t|
      t.string :name
      t.string :college
      t.integer :classz
      t.integer :meet_id
      
      t.timestamps
    end
  end
end
