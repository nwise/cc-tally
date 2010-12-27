module PlayersHelper
  def player_win_loss_chart_hash

    wins = []
    losses = []
    x_labels = []
    y_labels = []
    Player.all.each do |player|
      num_wins = Game.wins_for_player(player)
      wins << num_wins
      losses << Game.games_for_player(player).size - num_wins
      x_labels << player.first_name
    end
    data = [wins, losses]
    game_totals = []
    Player.all.each{|p| game_totals << Game.games_for_player(p).size}
    total_games = game_totals.max
    y_labels = [0, ((total_games*0.25).ceil), ((total_games*0.5).ceil), ((total_games*0.75).ceil),total_games]
    chart_hash = {:data => data,
                  #:stacked => false,
                  :title => "Wins/Losses by Player",
                  :axis_labels => [x_labels.join('|'), y_labels.join('|')], 
                  :axis_with_labels => 'x,y', 
                  :bar_colors => ['83e641', 'ff6619'],
                  :width => 400,
                  :height => 300,
                  :custom => 'chg=0,0,5,0'}

  end
end
