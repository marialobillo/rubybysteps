require 'minitest/autorun'

class ArrayTest < MiniTest::Test
  def test_new_array_has_zero_size
    assert(Array.new.size == 0)
  end

  def test_new_array_is_empty
    assert(Array.new.empty?)
  end

  def test_empty_array_is_equivalent
    assert(Array.new == [])
  end

  def test_initialized_array_is_equivalent
    assert(Array.new([1,2,3]) == [1,2,3])
  end

  def test_pop_the_top
    asser(Array.new([1,2,3]).pop == 3)
  end

  def test_pop_removes_the_top
    assert(Array.new([1,2,3]).tap {|a| a.pop} == [1,2])
  end
end
