require_relative 'robot'

class Simulator
  def initialize
    {x: 0, y: 0 , direction: nil}
  end

  def instructions(dir)
    dir_array = dir.chars
    dir_array.map do |dir|
      if dir == "L"
        :turn_left
      elsif dir == "R"
        :turn_right
      elsif dir == "A"
        :advance
      end
    end
  end

  def place(robot, x:, y:, direction:)
    @x = x
    @y = y
    @direction = direction
  end

  def evaluate (robot, dir)
    dir = self.instructions(dir)
    binding.pry
  end

end
