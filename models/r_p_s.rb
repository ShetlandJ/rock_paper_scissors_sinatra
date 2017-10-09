class Game

  def result(play1, play2)
    if play1 == play2
      return "DRAW"
    elsif (play1 == "Rock" && play2 == "Paper")
      return "#{play2} beats #{play2}!"
    elsif (play1 == "Paper" && play2 == "Rock")
      return "#{play1} beats #{play2}!"
    elsif play1 == "Scissors" && play2 == "Paper"
      return "#{play1} beats #{play2}!"
    elsif play1 == "Paper" && play2 == "Scissors"
      return "#{play2} beats #{play1}!"
    elsif play1 == "Scissors" && play2 == "Rock"
      return "#{play2} beats #{play1}!"
    elsif play1 == "Rock" && play2 == "Scissors"
      return "#{play1} beats #{play2}!"
    end
  end


end
