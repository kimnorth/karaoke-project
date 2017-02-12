require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../party.rb')

class TestRoom < MiniTest::Test

  def setup
    @new_room = Room.new("Room 1", 10)
    @party1 = Party.new("Peter James", 8, 100)
    @party2 = Party.new("Massive Dan", 20, 500)
  end

  def test_return_room_name
    assert_equal("Room 1", @new_room.room_name)
  end

  def test_return_room_capacity
    assert_equal(10, @new_room.room_capacity)
  end

  def test_return_room_guests
    assert_equal([], @new_room.current_guests)
  end

  def test_add_party_to_room
    @new_room.add_party_to_room(@party1)
    assert_equal([@party1], @new_room.current_guests)
  end

  def test_remove_party_from_room
    @new_room.add_party_to_room(@party1)
    # p @new_room.current_guests
    @new_room.remove_party(@party1)
    assert_equal([], @new_room.current_guests)
  end

  def test_return_song_list
    assert_equal({}, @new_room.song_list)
  end

  def test_add_song_to_song_list
    @new_room.add_song("Do The Strand", "Roxy Music")
    assert_equal({"Do The Strand" => "Roxy Music"}, @new_room.song_list)
  end

  def test_remove_song_from_song_list
    @new_room.add_song("Do The Strand", "Roxy Music")
    #p @new_room.song_list
    @new_room.remove_song("Do The Strand")
    assert_equal({}, @new_room.song_list)
  end

  def test_too_many_guests
    asserted = @new_room.add_party_to_room(@party2)
    assert_equal("Not enough room!", asserted)
  end

  def test_return_room_tab
    assert_equal(0, @new_room.room_tab)
  end

  def test_add_drinks_to_room
    @new_room.add_to_tab(5)
    assert_equal(5, @new_room.room_tab)
  end

end