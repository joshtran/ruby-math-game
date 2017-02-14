class Player
  attr_accessor :name, :lives

  def initialize (name)
    @name = name
    @lives = 3
  end

  def decrease_lives
    self.lives -= 1
  end

end
