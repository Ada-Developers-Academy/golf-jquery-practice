class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :category
      t.string :handed

      t.timestamps
    end
  end
end
