class Recipe < ActiveRecord::Base
  validates :name, presence: true
end