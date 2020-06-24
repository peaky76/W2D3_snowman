class Game

    attr_reader :player, :word, :guessed_letters

    def initialize(player, word)
        @player = player
        @word = word
        @guessed_letters = []
    end

    def make_guess(letter)
        @guessed_letters << letter
        @player.lives -= 1 if !@word.contains?(letter)
    end

end
