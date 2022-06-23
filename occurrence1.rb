lines=File.readlines("voltaireZadig.txt")
line_count=lines.size
text=lines.join
stopwords=["tandis","les" ,"tout","ciel","qui"]
stopcompt=[]
words= text.scan(/\w+/)
keywords=words.select{|word| stopwords.include?(word)}
(0..stopwords.length-1).each {|i|
   compt=0
    (0..keywords.length).each {|j|
          if(stopwords[i] == keywords[j])
              compt=compt+1
          end 
       }
       stopcompt[i]=compt
       p "#{stopwords[i]} = #{stopcompt[i]}"
    }


