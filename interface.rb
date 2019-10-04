require_relative 'frequencies'

text =  File.open('speech.txt').read

histogram = word_counter(text)

histogram.each do |word, count|
  puts "#{word}: #{count}"
end

