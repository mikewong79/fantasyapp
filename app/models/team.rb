class Team
  include Mongoid::Document
  field :name, type: String
  belongs_to :owner
  belongs_to :league
  has_many :players

  attr_accessor :player_add
end
