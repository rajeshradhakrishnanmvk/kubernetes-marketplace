#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

exit_code = 0

Dir.glob('**/*.png').each do |filename|
  image_size = ImageSize.path(filename)
  if image_size.format != :png
    puts "#{filename} isn't in PNG format"
    exit_code = 1
  end
  if image_size.width > 512
    puts "#{filename} is wider than 512px"
    exit_code = 1
  end
  if image_size.height > 512
    puts "#{filename} is taller than 512px"
    exit_code = 1
  end
  if File.size(filename) > 20_480
    puts "#{filename} is larger than 20KB"
    exit_code = 1
  end
end

exit exit_code