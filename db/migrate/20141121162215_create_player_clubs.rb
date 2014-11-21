class CreatePlayerClubs < ActiveRecord::Migration
  def change
    create_table :player_clubs do |t|
      t.integer :player_id
      t.integer :club_id

      t.timestamps
    end
  end
end
