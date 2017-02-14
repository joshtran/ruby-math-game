class Player
  attr_accessor :name, :lives, :answer

  def initialize (name)
    name = name
    lives = 3
    answer = false
  end

  def correct_answer
    self.answer = true
  end

  def decrease_lives
    self.lives -= 1
  end

end
