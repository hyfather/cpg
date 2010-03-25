require_relative "../cgp/image.rb"
require_relative "../cgp/image_transform.rb"
require_relative "../cgp/random_file_name.rb"
require_relative "../cgp/random_image_text.rb"
module Cgp
	def self.handler(verbose, format)
		scratch_image = Image.new(300, 100, "white")
		transform_image = ImageTransform.new(scratch_image)
		file = RandomFileName.new(8)
		text = RandomImageText.new(5)
		transform_image.place_text("#{text}", "70%", -22.0)
		transform_image.write("#{file}",format)
		if verbose
			puts "#{file}, #{text}"
		end
	end
end
	

