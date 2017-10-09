require("minitest/autorun")
require("minitest/rg")
require_relative("../models/game")

class TestGame < MiniTest::Test
  def setup()
    @game1 = Game.new()
  end

  def test_rock_wins()
    assert_equal("Rock beats Scissors!", @game1.result("Rock", "Scissors"))
  end

  def test_paper_wins()
    assert_equal("Paper beats Rock!", @game1.result("Paper", "Rock"))
  end

  def test_scissors_wins()
    assert_equal("Scissors beats Paper!", @game1.result("Scissors", "Paper"))
  end

  def test_non_rps_input()
    play1 = "James"
    play2 = "Pie"
    assert_equal("#{play1} and #{play2} are not a valid Rock, Paper, Scissors combination.", @game1.result("James", "Pie"))
  end

  def test_draw()
    assert("Game ended in a draw.", @game1.result("Scissors", "Scissors"))
  end
end
