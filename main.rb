require 'pry'
require './question'
require './player'


class MathGame
  attr_accessor :first_player, :second_player, :current_player, :game_over, :new_question, :new_answer

  def initialize (player1, player2)
    @first_player = Player.new(player1)
    @second_player = Player.new(player2)
    @current_player = @first_player
    @game_over = false
    until game_over
      prompt_question
    end
  end

  def prompt_question
    print "#{current_player.name}, here's your question: "
    @new_question = Question.new
    @new_answer = new_question.ask_question
    next_turn
  end

  def next_turn
    if !self.new_answer
      puts "#{current_player.name}: Wrong answer - lose a life"
      self.current_player.decrease_lives
      puts "Scoreboard: P1: #{self.first_player.lives}/3  P2: #{self.second_player.lives}/3"

      if first_player.lives < 1
        puts "#{second_player.name} wins with a score of #{second_player.lives}/3"
        puts "------ GAME OVER -----"
        self.game_over = true
      elsif second_player.lives < 1
        puts "#{first_player.name} wins with a score of #{first_player.lives}"
        puts "------ GAME OVER -----"
        self.game_over = true
      else
        puts "-----   NEW TURN ------"
        switch_player
      end

    else
      puts "Correct answer"
    end
  end

  def switch_player
    if self.current_player == self.first_player
      self.current_player = self.second_player
    else
      self.current_player = self.first_player
    end
  end

end


start_game = MathGame.new("Player1", "Player2")