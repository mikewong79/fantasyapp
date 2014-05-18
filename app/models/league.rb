class League
  include Mongoid::Document
  field :name, type: String
  belongs_to :owner
  has_many :teams
  has_many :comments
end
