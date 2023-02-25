# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_add_element
    stack = Stack.new
    stack.push!('A')

    assert { stack.size == 1 }
  end

  def test_remove_element
    stack = Stack.new
    stack.push!('A')

    element = stack.pop!

    assert { element == 'A' }
    assert { stack.size == 0 }
  end

  def test_clear
    stack = Stack.new
    stack.push!('A')

    stack.clear!

    assert { stack.size == 0 }
  end

  def test_emptiness
    stack = Stack.new

    assert { stack.empty? }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
