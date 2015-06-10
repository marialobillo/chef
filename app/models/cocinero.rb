class Cocinero < ActiveRecord::Base
  validates: name, presence: true
end
