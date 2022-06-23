 lines = File.readlines("voltaireZadig.txt") #array
line_count = lines.size
text = lines.join
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

res =((keywords.length.to_f / words.length.to_f) * 100) 

p res
p "--------------------------------------------------" 
#Finding “Interesting” Sentences

text = %q{Qui dans le bercement des hosannah s'endort,encens encens encens encens encens encens.
Tandis qu'une folie épouvantable broie Et fait de cent milliers d'hommes un tas fumant ;
- Pauvres morts ! dans l'été, dans l'herbe, dans ta joie,Nature ! ô toi qui fis ces hommes saintement !...
- Il est un Dieu, qui rit aux nappes damassées Des autels, à l'encens, aux grands calices d'or ;
Qui dans le bercement des hosannah s'endort,}





sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
p sentences

sentences_sorted = sentences.sort_by { |sentence| sentence.length }

p sentences_sorted 

one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /est|aux/ }
puts ideal_sentences.join(". ")
