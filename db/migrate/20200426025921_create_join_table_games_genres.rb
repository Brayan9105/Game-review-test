class CreateJoinTableGamesGenres < ActiveRecord::Migration[6.0]
  def change
    create_join_table :games, :genres do |t|
       t.index :genre_id
       t.index :game_id
    end
  end
end
