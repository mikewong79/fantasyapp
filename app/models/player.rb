class Player
  include Mongoid::Document
  field :name, type: String
  field :nba_team, type: String
  field :position, type: String
  belongs_to :team
end
