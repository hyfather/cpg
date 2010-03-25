require 'RMagick'
require_relative "../cgp/image.rb"
module Cgp

	class ImageTransform < Image
		attr_reader :image
		def initialize(image)
			@image = super(image.hsize, image.vsize, image.bgcolor)
		end
		
		def place_text(text, opacity, rotation)
			drawer = Magick::Draw.new	
			drawer.opacity(opacity)
			drawer.rotation = rotation
			drawer.kerning(-7)
			drawer.gravity(Magick::CenterGravity)
			drawer.pointsize = 50
			drawer.text(0,0, text)
			drawer.draw(@image)
		end
	end
end

	
