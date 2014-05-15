class League
  include Mongoid::Document
  field :name, type: String
  has_one :commissioner
  has_many :teams
end
