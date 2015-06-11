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

  test "cocinero name should not be too long" do
    @cocinero.name = "a" * 41
    assert_not @cocinero.valid?
  end

  test "cocinero name should not be too short" do
    @cocinero.name = "aa"
    assert_not @cocinero.valid?
  end
  
end
