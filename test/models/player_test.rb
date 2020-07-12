require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "valid player" do
    player = Player.new(name: 'Madonna')
    assert player.valid?
  end

  test "presence of name" do
    player = Player.new
    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end

  test "association has_many albuns" do
    player = Player.new(name: 'Madonna2')
    album = Album.new(name: 'Peligro2')
    player.albums << album
    assert_not_empty player.albums
  end
end
