require 'gosu'

class WhackARuby < Gosu::Window
  def initialize
    super(1000, 600)
    self.caption = 'Whack the Ruby!'
    @image = Gosu::Image.new('ruby.png')
    @x = 200
    @y = 200
    @width = 50
    @height = 43
    @velocity_x = 5
    @velocity_y = 5
  end

  def update
    # Increment the `x` and `y` coordinate's of the ruby's center
    @x += @velocity_x
    @y += @velocity_y
    # if the sum of the x or y coordinates and width or height divided by two are greater
    # than the window's dimensions or less than zero, multiply the velocity of either vector by
    # negative one.
    @velocity_x *= -1 if @x + @width / 2 > 1000 || @x - @width / 2 < 0
    @velocity_y *= -1 if @y + @height / 2 > 600 || @y - @height / 2 < 0
  end

  # set the dimensions of the ruby image
  def draw
    @image.draw(@x - @width / 2, @y - @height / 2, 1)
  end
end

window = WhackARuby.new
window.show
