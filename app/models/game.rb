class Game < ActiveRecord::Base
  belongs_to :game_type
  belongs_to :player1, :class_name => "Player"
  belongs_to :player2, :class_name => "Player"
  belongs_to :faction1, :class_name => "Faction"
  belongs_to :faction2, :class_name => "Faction"
  belongs_to :winner, :class_name => "Player"
  belongs_to :scenario
end
