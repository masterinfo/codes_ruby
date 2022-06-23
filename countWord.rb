lines = File.readlines("./voltaireZadig.txt")
text = lines.join
words = text.split

wordCountTable= {}

words.each do |w|
    if wordCountTable.key?(w)
        wordCountTable[w] += 1
    else
        wordCountTable[w] = 1
    end
end

puts wordCountTable

