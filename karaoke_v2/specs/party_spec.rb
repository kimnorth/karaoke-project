require('minitest/autorun')
require('minitest/rg')
require_relative('../party.rb')

class TestParty < MiniTest::Test

  def setup
    @party1 = Party.new("Peter Jones", 8, 1000, "My Way")
  end

  def test_return_party_booking_name
    assert_equal("Peter Jones", @party1.party_name)
  end

  def test_return_party_size
    assert_equal(8, @party1.party_size)
  end

  def test_return_party_money
    assert_equal(1000, @party1.party_money)
  end

  def test_return_party_fave_song
    assert_equal("My Way", @party1.favourite_song)
  end


end