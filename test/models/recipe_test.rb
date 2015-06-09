require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: "chicken parm", summary: "This is best chicken parm recipe ever", 
        description: "heat oil, add onions, add tomato sauce, add chicken, cook for 20 minutes")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end

end