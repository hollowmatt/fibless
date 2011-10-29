require 'helper'
#I admit these tests are a bit weak... but at least it is both positive/negative test
class TestFibless < Test::Unit::TestCase
  context "Find the Fibonacci number prior to the number entered" do
    #test valid input
    should "return 89 for 128 as input" do
      assert_equal 89, 128.closest_fibonacci
    end
    #test invalid input
    should "invalid entry" do
      assert_equal "Please enter a number of zero or greater, thanks", -1.closest_fibonacci
    end
  end
end
