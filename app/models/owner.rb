require "bcrypt"
class Owner
  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :avatar

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :password_digest, type: String
  has_many :teams
  has_many :leagues

  validates :email, uniqueness: :true, presence: :true
  validates :first_name, :last_name, presence: :true
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def password
    @password
  end

  def password=(new_password)
    @password = new_password
    self.password_digest = BCrypt::Password.create(new_password)
  end

  def authenticate(test_password)
    if BCrypt::Password.new(self.password_digest) == test_password
      self
    else
      false
    end
  end

end
