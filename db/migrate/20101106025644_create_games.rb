class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.date :date
      t.integer :game_type_id, :scenario_id, :player1_id, :faction1_id, :player2_id, :faction2_id, :winner_id
      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
