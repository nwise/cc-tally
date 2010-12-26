class Game < ActiveRecord::Base
  belongs_to :game_type
  belongs_to :player1, :class_name => "Player"
  belongs_to :player2, :class_name => "Player"
  belongs_to :faction1, :class_name => "Faction"
  belongs_to :faction2, :class_name => "Faction"
  belongs_to :winner, :class_name => "Player"
  belongs_to :scenario

  named_scope :winning_games_for, lambda { |*args| {:conditions => ["winner_id = ?", args.first]} }

  named_scope :player_ids_by_wins,
              :select => "winner_id, COUNT(*) AS wins",
              :group  => "winner_id",
              :order  => "wins DESC"

  def self.wins_for_player(player)
    Game.winning_games_for(player.id).size
  end

  def self.games_for_player(player)
    Game.find(:all, :conditions => ["player1_id = ? OR player2_id = ?", player.id, player.id])
  end

  def self.games_for_players(player1, player2)
    Game.find(:all, :conditions => ["(player1_id = ? AND player2_id = ?)OR (player1_id = ? AND player2_id = ?)", player1.id, player2.id, player2.id, player1.id])
  end

  def self.games_with_nationality(faction)
    games = Game.find(:all, :conditions => ["faction1_id = ? OR faction2_id = ?", faction.id, faction.id])
  end

  def self.players_by_wins
    Game.player_ids_by_wins.map{|g| Player.find(g.winner_id)}
  end
end
