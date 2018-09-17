class Team

attr_accessor :team_name, :players, :coach_name

def initialize(team_name, players, coach_name)
  @team_name = team_name
  @players = players
  @coach_name = coach_name
end


  def add_players(player)
    @players.push(player)
  end




end
