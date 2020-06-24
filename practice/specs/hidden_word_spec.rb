#A HiddenWord will be initialised with a word string, but will only displayWord letters which have been correctly guessed, replacing the rest with the * character
# The HiddenWord should also be able to report true or false if a letter appears in the word


require('minitest/autorun')
require('minitest/reporters')

require_relative('../hidden_word')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestHiddenWord < MiniTest::Test

    def setup()
        @word_to_guess = HiddenWord.new("javascript")
    end

    def test_initial_word_display()
        assert_equal("**********", @word_to_guess.display_word())
    end

end