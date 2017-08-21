require 'pry'

def reverse_string(ss, from, to)
  while from < to
    ss[from], ss[to] = ss[to], ss[from]
    from += 1
    to -= 1
  end
end

def solution(ss, all_length, m)
  m %= all_length
  reverse_string(ss, 0, m - 1)
  reverse_string(ss, m, all_length - 1)
  reverse_string(ss, 0, all_length - 1)
  ss
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 'cdefab', solution('abcdef', 6, 2)
  end
end
