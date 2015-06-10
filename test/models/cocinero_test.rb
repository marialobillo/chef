require 'test_helper'

class CocineroTest < ActiveSupport::TestCase
 
  def setup
    @cocinero = Cocinero.new(name: "jhon", email: 'jhon@mail.com')
  end

  test "cocinero should be valid" do 
    assert @cocinero.valid?
  end

  test "cocinero should be present" do
    @cocinero.name = " "
    assert_not @cocinero.valid?
  end
end
