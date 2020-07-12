class AddAlbumPlayer < ActiveRecord::Migration[5.2]
  def change
    create_join_table :albums, :players do |t|
      t.index %i[album_id player_id], unique: true
    end
    # migrate albums to new table
    up_only do
      Album.all.each do |a|
        unless a.player_id.nil?
          a.update(players: [Player.find(a.player_id)])
        end
      end
      # drop player_id from albums
      remove_column :albums, :player_id
    end
  end
end
