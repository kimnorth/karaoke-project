require('minitest/autorun')
require('minitest/rg')
require_relative('../database.rb')
require_relative('../room.rb')

class TestDatabase < MiniTest::Test

  def setup
    @new_database = Database.new()
    @room1 = Room.new("Room 1", 10)
  end

  def test_return_rooms
    assert_equal([], @new_database.room_list)
  end

  def test_add_rooms
    @new_database.add_room(@room1)
    assert_equal([@room1], @new_database.room_list)
  end

  def test_remove_rooms
    @new_database.add_room(@room1)
    @new_database.remove_room(@room1)
    assert_equal([], @new_database.room_list)
  end

end
