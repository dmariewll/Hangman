class Hangman

  def initialize
    @guesses = []
    @turns = 8

    @random_words = [
        "banana",
        "apple"
    ]

    length = rand 0 .. (@random_words.length - 1)
    @word = @random_words.sample
    @word_arr = @word.chars.to_a
    puts @word

  end

  def prompt_user
    puts "\n\n"
    puts "Enter your guess "
    print "> "
    guess = gets.chomp

    if @word_arr.include? guess
      puts "That's correct!"
    else
      "Wrong answer"
      @turns -= 1
      puts "You have #{@turns} left."
    end
    @guesses.push guess
  end


  def show_board
    if @word_arr.each  do |x|
      print "_ "
    end

    end

  end

  def show_guesses
    puts @guesses.join (',')
    puts "Your guesses: #{@guesses}"
  end

end



