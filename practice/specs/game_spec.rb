# A Game will have properties for a Player object, a HiddenWord object, and an array of guessed_letters

require('minitest/autorun')
require('minitest/reporters')

require_relative('../game')
require_relative('../hidden_word')
require_relative('../player')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestGame < MiniTest::Test

    def setup()
        @player = Player.new("Bill")
        @word_to_guess = HiddenWord.new("Ruby on Rails")
        @game = Game.new(@player, @word_to_guess)
    end

    def test_game_player()
        assert_equal("Bill", @game.player.name)
    end

    def test_game_word_initial_display()
        assert_equal("**** ** *****", @game.word.display(@game.guessed_letters))
    end

    def test_initial_guessed_letters_empty()
        assert_equal(0, @game.guessed_letters.length)
    end

    def test_guess_correct()
        @game.make_guess("r")
        assert_equal(1, @game.guessed_letters.length)
        assert_equal("R*** ** R****", @game.word.display(@game.guessed_letters))
        assert_equal(6, @game.player.lives)
    end

    def test_guess_wrong()
        @game.make_guess("z")
        assert_equal(1, @game.guessed_letters.length)
        assert_equal("**** ** *****", @game.word.display(@game.guessed_letters))
        assert_equal(5, @game.player.lives)
    end

end