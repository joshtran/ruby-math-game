class Question
  attr_accessor :player_answer, :correct_answer, :number_one, :number_two

  def initialize
    @number_one = 1 + rand(20)
    @number_two = 1 + rand(20)
    @correct_answer = @number_one + @number_two
  end

  def ask_question
    puts "Question: #{self.number_one} + #{self.number_two}"
    @player_answer = gets.to_i
    check_answer
  end

  def check_answer
    puts self.player_answer
    puts self.correct_answer
    if self.player_answer == self.correct_answer
      puts "Correct"
    else
      puts "Incorrect"
    end
  end

end

