class Team
  include Mongoid::Document
  field :name, type: String
  belongs_to :owner
  has_many :players
end
