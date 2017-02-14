require 'pry'
require './question'
require './player'
# require './math_game'
# binding.pry


class MathGame

  attr_accessor :first_player, :second_player, :current_player, :game_over, :new_question, :new_answer

  def initialize (player1, player2)
    @first_player = Player.new(player1)
    @second_player = Player.new(player2)
    @current_player = @first_player
    @game_over = false
    @new_question = Question.new
    @new_answer = new_question.ask_question
    next_turn
  end

  def next_turn
    puts @new_answer.inspect
    if !self.new_answer
      puts "#{current_player.name}: Wrong answer - lose a life"
      self.current_player.decrease_lives
      puts "P1: #{self.current_player.lives}  P2: #{self.second_player.lives}"
      self.current_player = self.second_player
      puts "current player is #{current_player.name}"
      puts "P1: #{self.current_player.lives}  P2: #{self.second_player.lives}"
    end
  end


end


game1 = MathGame.new("Player1", "Player2")