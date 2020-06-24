require('minitest/autorun')
require('minitest/reporters')

require_relative('../player')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestPlayer < MiniTest::Test

    def setup()
        @player = Player.new("Dave")
    end
    
    def test_player_has_name()
        assert_equal("Dave", @player.name)
    end

    def test_player_has_lives()
        assert_equal(6, @player.lives)
    end

    def test_player_lose_life()
        @player.lose_life()
        assert_equal(5, @player.lives)
    end

end