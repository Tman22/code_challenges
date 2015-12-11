require 'minitest/autorun'
require 'minitest/pride'
require_relative 'vigenere'

class VigenereTest < Minitest::Test

  def test_it_encodes_a_single_character
    result = vigenere("f", "a")
    assert_equal "g", result
  end

  def test_it_can_wrap_around_the_alphabet
    skip
    result = vigenere("y", "c")
    assert_equal "b", result
  end

  def test_it_can_handle_capitals_in_the_key
    skip
    result = vigenere("y", "C")
    assert_equal "b", result
  end

  def test_it_encodes_a_word
    skip
    result = vigenere("foo","bar")
    assert_equal "hpg",result
  end

  def test_it_encodes_a_phrase
    skip
    result = vigenere("hello world", "bacon")
    assert_equal "jfoac ypuar", result
  end

  def test_it_preserves_capital_letters
    skip
    result = vigenere("G", "a")
    assert_equal "H", result
  end

  def test_it_encodes_a_phrase_with_capital_letters
    skip
    result = vigenere("Hello World", "bacon")
    assert_equal "Jfoac Ypuar", result
  end

  def test_it_ignores_punctuation
    skip
    result = vigenere("Hello World!", "shy")
    assert_equal "Amkew Vhzkw!", result
  end


end

