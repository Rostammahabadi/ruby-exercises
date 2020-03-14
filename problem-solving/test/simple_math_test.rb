require_relative "test_helper"
require_relative "../lib/simple_math"

class SimpleMathTest < Minitest::Test

  def test_it_can_add_two_numbers
    sm = SimpleMath.new

    result = sm.add(2,2)
    expected = 4

    assert_equal expected, result
  end

  def test_it_can_add_two_different_numbers
    sm = SimpleMath.new

    result = sm.add(5,3)
    expected = 8

    assert_equal expected, result
  end

  def test_it_can_subtract_two_numbers
    sm = SimpleMath.new

    result = sm.subtract(10,2)
    expected = 8

    assert_equal expected, result
  end

  def test_it_can_subtract_two_other_numbers
    sm = SimpleMath.new

    result = sm.subtract(50,27)
    expected = 23

    assert_equal expected, result
  end

  def test_it_can_multiply_two_numbers

    # instantiate the class
    sm = SimpleMath.new
    # call the method being tested
    # determine your expected result
    result = sm.multiply(5,10)
    expected = 50
    # check results

    assert_equal expected, result
  end


  def test_it_can_multiply_two_other_numbers

    # instantiate the class
    sm = SimpleMath.new
    # call the method being tested
    # determine your expected result
    result = sm.multiply(20,100)
    expected = 2000
    # check results

    assert_equal expected, result
  end

  def test_it_can_divide_two_numbers
    # your code goes here
    sm = SimpleMath.new

    result = sm.divide(2000,100)
    expected = 20

    assert_equal expected, result
  end

  def test_it_can_divide_two_other_numbers
    # # your code goes here
    sm = SimpleMath.new

    result = sm.divide(200000000,2)
    expected = 100000000

    assert_equal expected, result
  end

end
