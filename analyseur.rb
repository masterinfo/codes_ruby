line_count =0
File.open("voltaireZadig.txt").each { |line| puts line 
line_count +=1}
puts "there are #{line_count} lines"
 
lines= File.readlines("voltaireZadig.txt")# transform in array
line_count = lines.size
 
puts "#{line_count} lines"


textcontinu = lines.join
p" --------------------------"
p textcontinu
textcontinu.gsub(/\?/,'')
p" --------------------------"
p textcontinu

p" --------------------------"
total_characters = textcontinu.length
puts "#{total_characters} characters"
p" --------------------------"
total_characters_nospaces = textcontinu.gsub(/\s+/, '').length
puts "#{total_characters_nospaces} characters excluding spaces"

word_count = textcontinu.split.length
puts "there are #{word_count} words"



  p tabword =  textcontinu.split
 
  frequency = Hash.new(0)
  tabword .each { |word| frequency[word.downcase] += 1 }
  p "----affichage du tableaux des fréquences non nettoyé ---------------"
  p frequency 
  
  
  stopwords = %w{le la les dans ! tandis qu'une  aux leur - un de se a il lui des du ; et je que qui une  }

   keywords = tabword.select { |word| !stopwords.include?(word.downcase) }
   p "----affichage du tableaux des mots nettoyé ---------------"
   p keywords

  frequency = Hash.new(0)

  keywords.each { |word| frequency[word.downcase] += 1 }
  p "----affichage du tableaux des fréquences nettoyé ---------------"
  p frequency 
  p "-------------------"
  p "----affichage du tableaux des fréquences trié par valeurinverse ---------"
  p frequency.sort_by {|_key, value| value}.reverse.to_h   
  p "-------------------"
  p "----affichage du tableaux des  5fréquences trié par valeurinverse ---------"
  p frequency.sort_by {|_key, value| value}.reverse.to_h .first 10
     
     
sentence_count = textcontinu.split(/\.|\?|!/).length
puts "there are #{sentence_count} sentence"

paragraph_count = textcontinu.split(/\n+/).length
puts "#{paragraph_count} paragraphs"



