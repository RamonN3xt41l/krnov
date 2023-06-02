require 'minitest/autorun'
require_relative '../Origin/class1'

class GameTest < Minitest::Test

=begin
  def testing_board
    game = Game.new
    assert game.board.values == ['N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N']
    assert false
  end
=end

  def testing_movements
    game = Game.new.movement_from_w('02')

    assert game.board['02'] == 'W'
  end
end
