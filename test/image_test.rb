require_relative "../lib/cgp/input.rb"
require_relative "../lib/cgp/handler.rb"
module Cgp
	
	input = Input.new
	case 
		when input.options[:version]
			puts "Cpg: Captcha Parser and Generator\nVersion 0.1"
			exit
		when input.options[:png]
			puts "Images will be PNG"
			format = "png"
		when input.options[:jpg]	
			puts "Images will be JPEG"	
			format = "png"
		when input.options[:num]
			puts "Outputting #{input.options[:num]} images"
			number_of_images = input.options[:num]
			format = "jpg"
		when input.options[:default]
			puts "Using sane defaults"
			format = "jpg"
		when input.options[:verbose]
			puts "Verbose logging will be passed to the screen"
			verbose = true	
		else
			puts "Using sane defaults"
			format = "jpg"			
	end
	if format == false
		format = "jpg"
	end

	if number_of_images && verbose
		1.upto(number_of_images) {handler(true, format)}
	elsif number_of_images
		1.upto(number_of_images) {handler(false, format)}
	elsif verbose
		handler(true, format)
	else
		handler(false, format)
	end	
end
	
	

