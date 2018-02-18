require 'byebug'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq, :user_seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false

  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
  end

  def take_turn
    system("clear")
    show_sequence
    @sequence_length += 1
    require_sequence
    round_success_message
  end

  def show_sequence
    add_random_color
    puts "Simon Says:"
    puts @seq
    sleep(@sequence_length)
    system("clear")
  end

  def require_sequence
    puts "Enter your sequence separated by commas:"
    input = gets.chomp.split(", ")
    @user_seq = input
  end

  def add_random_color
    @seq << COLORS.sample

  end

  def round_success_message
    # debugger
    if @user_seq == @seq
      puts "Good Job!"
    else
      @game_over = true
    end

  end

  def game_over_message
    puts "You Lose. Your score was #{sequence_length}"

  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end
