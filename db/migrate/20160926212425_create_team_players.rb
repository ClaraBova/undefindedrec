class CreateTeamPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_players do |t|
      t.integer :player_id
      t.integer :team_id
      t.string :preferred_position

      t.timestamps
    end
  end
end
