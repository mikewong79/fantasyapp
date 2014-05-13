class League
  include Mongoid::Document
  field :name, type: String
  has_one :commisioner
  has_many :owners
end
