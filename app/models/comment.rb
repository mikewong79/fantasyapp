class Comment
  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :picture

  field :name, type: String
  field :message, type: String
  belongs_to :league

  validates :message, presence: :true
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
