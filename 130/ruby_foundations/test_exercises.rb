require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

# require_relative 'to_do_list'

class NoExperienceError < StandardError
end

class Employee
  def hire
    raise NoExperienceError
  end
end

class List
  def process
    self
  end
end

class ExcercisesTest < MiniTest::Test
  def setup
  end

  def test_boolean
    value = 1
    assert_equal(true, value.odd?)
    assert value.odd?, 'value is not odd'
  end

  def test_value_xyz
    value = 'XYZ'
    assert_equal('xyz', value.downcase)
  end

  def test_value_not_nil
    value = nil
    assert_nil value
    assert_equal(nil, value)
  end

  def test_list_empty
    list = []
    assert_equal(true, list.empty?)
    assert_empty(list)
  end

  def test_list_include_xyz
    list = ['xyz', 'something']
    assert_includes list, 'xyz'
    assert_equal(true, list.include?('xyz'))
  end

  def test_no_experience_error
    employee = Employee.new
    
    assert_raises NoExperienceError do
      employee.hire
    end
  end

  def test_instance_of
    value = Numeric.new()
    assert_instance_of Numeric, value
  end

  def test_kind_of
    value = 0.1
    assert_kind_of Numeric, value
  end

  def test_same_list
    list = List.new
    assert_same list, list.process
  end

  def test_refutation
    list = ['rew', 'abc']
    refute_includes list, 'xyz'
  end
end
