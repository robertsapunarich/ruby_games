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
  end

  def draw_image

  end
end

window = WhackARuby.new
window.show
