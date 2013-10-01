class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.float :vault
      t.float :bars
      t.float :beam
      t.float :floor
      t.float :all_around

      t.timestamps
    end
  end
end
