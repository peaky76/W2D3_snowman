# A Game will have properties for a Player object, a HiddenWord object, and an array of guessed_letters

require('minitest/autorun')
require('minitest/reporters')

require_relative('../game')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestGame < MiniTest::Test

    def setup()
        @player = Player.new("Bill")
        @word_to_guess = HiddenWord.new("Ruby on Rails")
        @game = Game.new()


end