require 'find'

total = 0

Find.find('.') do |file|
  next unless file.end_with? ".html"
  puts file

  File.open(file).each do |line|
    words = line.split(/\s+/).reject{ |w| w.empty? }
    total += words.count
  end
end

puts total
