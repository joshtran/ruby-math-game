class MathGame

  attr_accessor :first_player, :second_player, :current_player, :game_over

  def initialize (player1, player2)
    @first_player = Player.new(player1)
    @second_player = Player.new(player2)
    @current_player = @first_player
    @game_over = false
  end


end