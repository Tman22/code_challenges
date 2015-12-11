require 'minitest/autorun'
require_relative 'uniqueness'

class UniquenessTest < Minitest::Test

  def test_uniqueness_exists
    assert Uniqueness.new

  end

  def test_uniqueness_list
    var = Uniqueness.new

    assert var.respond_to?(list)
  end

  def test_list_counts_words
    var = Uniqueness.new
    sentence = "hey hey hey"
    result = {"hey" => 3}

    assert_equal result, var.list(sentence)

  end


end
