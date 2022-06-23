 lines = File.readlines("voltaireZadig.txt") #array
line_count = lines.size
text = lines.join
p text
p "----------------"
p lines
p "----------------"

puts "#{line_count} lines"

total_characters = text.length
puts "#{total_characters} characters"

paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"


sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

word_count = text.split.length
puts "#{word_count} words"


puts #{sentence_count / paragraph_count} sentences per paragraph (average)
puts "#{word_count / sentence_count} words per sentence (average)"

stopwords = %w{ tandis les tout ciel qui}

words = text.scan(/\w+/)
keywords = words.select { |word|  stopwords.include?(word) }
p "--------------------------------------------------" 
puts keywords.join(' ')

res =((keywords.length.to_f / words.length.to_f) * 100).to_i

p res