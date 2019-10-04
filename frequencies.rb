def word_counter(text)
  #define the hash
  histogram = {}

  #make array of special characters?
  #check to see if a space exists
  # split the text: take in to account special characters

  text.delete(".,!?/").downcase.split(" ").each do |word|
    if histogram.key?(word)
      histogram[word] += 1
    else
      histogram[word] = 1
    end
  end
  p histogram.sort_by { |word, number| number }.reverse.to_h
  return histogram.sort_by { |word, number| number }.reverse.to_h
  # then loop through the text

  # .key? see if word exists inside
  # sum up the count
  # key should be the words and the value should be the sum
end
