class Team

attr_accessor :team_name, :players, :coach_name, :team_points

def initialize(team_name, players, coach_name)
  @team_name = team_name
  @players = players
  @coach_name = coach_name
  @team_points = 0
end


  def add_players(player)
    @players.push(player)
  end

def check_players_by_name(player_name)
  for player in @players
    if player == player_name
      return player
    end
  end
  return nil
end

def team_win_lost(result)
  if result == "win"
    @team_points += 1
  elsif result == "loss"
    return @team_points
  else
    return "error"
  end
end






end
