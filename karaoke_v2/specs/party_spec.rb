require('minitest/autorun')
require('minitest/rg')
require_relative('../party.rb')

class TestParty < MiniTest::Test

  def setup
    @party1 = Party.new("Peter Jones", 8)
  end

  def test_return_party_booking_name
    assert_equal("Peter Jones", @party1.party_name)
  end

  def test_return_party_size
    assert_equal(8, @party1.party_size)
  end

  def test_return_party_money
    assert_equal(1000, @part1.money)
  end


end