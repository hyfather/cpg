require 'optparse'
module Cgp

	class Input
		attr_reader :args, :options
		def initialize
		@options = Hash.new(false)
		optparse = OptionParser.new do |opts|
				opts.banner = "Usage: cgp [options]"
				
				opts.on("-d", "--default", "Use default parameters(recommended)") {@options[:default] = true}
				opts.on("-n", "--number [number]",Integer, "Determines number of images generated") {|num| @options[:num] = num}
				opts.on("-p", "--png","Images are generated in the PNG format") {@options[:png] =true}
				opts.on("-j", "--jpeg","Images are generated in the JPEG format") {@options[:jpg] =true}
				opts.on("-v", "--verbose", "Displays verbose logging information") {@options[:verbose] = true}
				opts.on("--version", "Displays current version") {@options[:version] = true}
				opts.on("-h", "--help", "Displays this screen") do
					@options[:help] = true
					puts opts.to_s
					exit
				end
			end
			optparse.parse!
			@args = ARGV.inspect
		end	
	end
end


