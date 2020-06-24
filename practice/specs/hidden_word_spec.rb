#A HiddenWord will be initialised with a word string, but will only displayWord letters which have been correctly guessed, replacing the rest with the * character
# The HiddenWord should also be able to report true or false if a letter appears in the word


require('minitest/autorun')
require('minitest/reporters')

require_relative('../hidden_word')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestHiddenWord < MiniTest::Test

    def setup()
        @single_word = HiddenWord.new("javascript")
        @multiple_words = HiddenWord.new("Ruby on Rails")
        @no_guesses_made = []
    end

    def test_initial_word_display()
        assert_equal("**********", @single_word.display(@no_guesses_made))
    end

    def test_initial_word_display_with_spaces()
        assert_equal("**** ** *****", @multiple_words.display(@no_guesses_made))
    end

    def test_word_contains_letter_true()
        assert(@multiple_words.contains?("r"))
    end

    def test_word_contains_letter_false()
        assert(!@multiple_words.contains?("z"))
    end

end