class Email
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :players_wanted, type: String
  field :players_offered, type: String
  field :owner, type: String
end
