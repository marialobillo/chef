class Cocinero < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3, maximum: 40 }
  validates :email, presence: true, length: { maximum: 105 }
end
