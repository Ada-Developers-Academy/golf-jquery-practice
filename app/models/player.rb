class Player < ActiveRecord::Base
  has_many :player_clubs
  has_many :clubs, through: :player_clubs
end
