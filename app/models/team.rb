class Team < ApplicationRecord
  has_many :team_players
  belongs_to :league
  has_many :team_games
  has_many :games, through: :team_games
  has_many :players, through: :team_players

  # validates :name, presence: true, uniqueness: true
  validates :league_id, presence: true

  def game_result(game)
    if game.winner == self.id
      return "Won"
    else
      return "Loss"
    end
  end

end
