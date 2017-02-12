# the "model"

class Database

  attr_accessor :room_list
  def initialize()
    @room_list = []
  end

  def add_room(new_room)
    @room_list.push(new_room)
  end

  def remove_room(room)
    @room_list.delete(room)
  end

end