require 'test_helper'

class CocineroTest < ActiveSupport::TestCase
 
  def setup
    @cocinero = Chef.new(name: "jhon", email: 'jhon@mail.com')
  end
end
