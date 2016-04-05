require_relative 'simulator'
require 'pry'

class Robot
#@direction = :east, :west, :north, :south
attr_reader :bearing
attr_accessor :x, :y, :direction



  def orient(direction)
    if direction == :east || direction == :west || direction == :north || direction == :south
      @bearing = direction
    else
      raise ArgumentError
    end
  end

  def turn_right
    if @bearing == :north
      @bearing = :east
    elsif @bearing == :east
      @bearing = :south
    elsif @bearing == :south
      @bearing = :west
    elsif @bearing == :west
      @bearing = :north
    end
  end

  def turn_left
    if @bearing == :north
      @bearing = :west
    elsif @bearing == :west
      @bearing = :south
    elsif @bearing == :south
      @bearing = :east
    elsif @bearing == :east
      @bearing = :north
    end
  end

  def at (x,y)
    @x = x
    @y = y
  end

  def coordinates
    [@x, @y]
  end

  def advance
    if @bearing == :north
      @y += 1
    elsif @bearing == :south
      @y -= 1
    elsif @bearing == :east
      @x += 1
    elsif @bearing == :west
      @x -= 1
    end
  end
end
