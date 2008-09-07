require 'rubygems'
require 'gd2'

include GD2

100.times do |i|
  puts i
  image = Image.new(640,480)
  image.draw do |pen|
    pen.color = image.palette.resolve Color[1.0, 0.75, 0.5]
    pen.thickness = 2
    pen.move_to 25, 50
    pen.line_to 175, 50
    pen.move -150-i, 25+i
    pen.font = Font::TrueType['/System/Library/Fonts/teenbold.ttf', 20]
    pen.text 'Hello, world!'
  end
  image.export("/Users/aa/ginc/rubyvideo/seq/seq#{i}.png")
end