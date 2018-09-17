require('minitest/autorun')
require('minitest/rg')
require_relative('../part_B')


class TestClass < MiniTest::Test
@players_list = ["Joe Lewis", "Shay Logan", "Graeme Shinnie"]

def test_team_name
  team = Team.new("Aberdeen FC", @players_list, "Derek McInnes")
  assert_equal("Aberdeen FC", team.team_name)
end

def test_players
  team = Team.new("Aberdeen FC", @players_list, "Derek McInnes")
  assert_equal(@players, team.players)
end






end
