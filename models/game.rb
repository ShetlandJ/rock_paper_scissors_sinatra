
class Game

  def result(play1, play2)
    player1 = "James"
    player2 = "Brian"
    if play1 == play2
      return "Game ended in a draw."
    elsif (play1 == "Rock" && play2 == "Paper")
      return "#{player2} beats #{player1}, as #{play2} beats #{play2}!"
    elsif (play1 == "Paper" && play2 == "Rock")
      return "#{player1} beats #{player2}, as #{play1} beats #{play2}!"
    elsif play1 == "Scissors" && play2 == "Paper"
      return "#{player1} beats #{player2}, as #{play1} beats #{play2}!"
    elsif play1 == "Paper" && play2 == "Scissors"
      return "#{player2} beats #{player1}, as #{play2} beats #{play1}!"
    elsif play1 == "Scissors" && play2 == "Rock"
      return "#{player2} beats #{player1}, as #{play2} beats #{play1}!"
    elsif play1 == "Rock" && play2 == "Scissors"
      return "#{player1} beats #{player2}, as #{play1} beats #{play2}!"
    else
      return "#{play1} and #{play2} are not a valid Rock, Paper, Scissors combination. Try again!"
    end
  end


end
