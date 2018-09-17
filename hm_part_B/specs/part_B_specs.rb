require('minitest/autorun')
require('minitest/rg')
require_relative('../part_B')


class TestClass < MiniTest::Test

  def setup()
    @players_list = ["Joe Lewis", "Shay Logan", "Graeme Shinnie"]
    @team = Team.new("Aberdeen FC", @players_list, "Derek McInnes")

  end

def test_team_name
  assert_equal("Aberdeen FC", @team.team_name)
end

def test_players
  assert_equal(@players_list, @team.players)
end


def test_coach_name
  assert_equal("Derek McInnes", @team.coach_name)
end

def test_add_players
  @team.add_players("Andrew Considine")
  players_updated = ["Joe Lewis", "Shay Logan", "Graeme Shinnie", "Andrew Considine"]
  assert_equal(players_updated, @team.players)
end

def test_check_players_by_name__in_the_team
  players_name = @team.check_players_by_name("Shay Logan")
  assert_equal("Shay Logan", players_name)
end

def test_check_players_by_name__not_found
  players_name = @team.check_players_by_name("John Stewart")
  assert_nil(players_name)
end

def test_team_points
assert_equal(0, @team.team_points)
end


def test_team_win_lost__won
assert_equal(1, @team.team_win_lost("win"))

end


def test_team_win_lost__lost
assert_equal(0, @team.team_win_lost("loss"))
end


end
