require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  def setup
    @album = Album.new(name: 'Peligro')
    @player = Player.new(name: 'Madonna')
  end

  test "valid album" do
    assert @album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "association has_many players" do
    @album.players << @player
    assert_equal 1, @album.players.size
  end
end
