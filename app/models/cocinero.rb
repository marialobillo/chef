class Cocinero < ActiveRecord::Base

  has_many :recipes

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { minimum: 3, maximum: 40 }

  VALID_EMAIL_REGEX = /\A[\W+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 105 },
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
end
