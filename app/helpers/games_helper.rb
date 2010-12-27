module GamesHelper

  def total_player_wins_hash
    wins = []
    labels = []
    Player.all.each do |p| 
      win =  Game.wins_for_player(p)
      wins << win
      labels << "#{p.first_name} - #{win}"
    end

    {:data => wins,
     :labels => labels,
     :title => "Wins",
     :width => 315,
     :custom => "chco=336114"}
  end

  def total_player_losses_hash
    losses = []
    labels = []
    Player.all.each do |p| 
      loss = (Game.games_for_player(p).size - Game.wins_for_player(p))
      losses << loss
      labels << "#{p.first_name} - #{loss}"
    end

    {:data => losses,
     :labels => labels,
     :title => "Losses",
     :width => 315,
     :custom => "chco=ad421b"}
  end
end
