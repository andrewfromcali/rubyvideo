require 'rubygems'
require 'gd2'

include GD2
image = Image.new(200,300)
image.draw do |pen|
  pen.color = image.palette.resolve Color[1.0, 0.75, 0.5]
  pen.thickness = 2
  pen.move_to 25, 50
  pen.line_to 175, 50
  pen.move -150, 25
  pen.font = Font::TrueType['/System/Library/Fonts/teenbold.ttf', 20]
  pen.text 'Hello, world!'
end
image.export('/Users/aa/ginc/rubyvideo/new-image.png')
