require 'RMagick'
module Cgp

	class Image
		attr_reader :image, :hsize, :vsize, :bgcolor
		
		def initialize(hsize, vsize, bgcolor)
			@hsize = hsize
			@vsize = vsize
			@bgcolor = bgcolor
			@image = Magick::Image.new(Integer(hsize), Integer(vsize)) {self.background_color = "#{bgcolor}"}
		end
		
		def write(name,type)
			@image.write("#{name}.#{type}")
		end
		
		def show
			@image.display
		end
	end
end		
