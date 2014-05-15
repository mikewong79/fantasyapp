class Commissioner < Owner
  include Mongoid::Document
  belongs_to :league
end
