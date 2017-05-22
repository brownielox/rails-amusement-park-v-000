class User < ActiveRecord::Base

  has_secure_password

  validates :password, presence: true
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    self.happiness > self.nausea ? "happy" : "sad"
  end

  def admin?
    admin
  end

end
