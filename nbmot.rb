def count_words(string)
  words = string.split(' ')
  frequency = Hash.new(0)
  words.each { |word| frequency[word.downcase] += 1 }
  return frequency
end
puts count_words('Tandis que les crachats rouges de la mitraille Sifflent tout le jour par l\'infini du ciel bleu ;
Qu\'écarlates ou verts, près du Roi qui les raille,Croulent les bataillons en masse dans le feu ;

Tandis qu\'une folie épouvantable broie Et fait de cent milliers d\'hommes un tas fumant ;
- Pauvres morts ! dans l\'été, dans l\'herbe, dans ta joie, Nature ! ô toi qui fis ces hommes saintement !...

- Il est un Dieu, qui rit aux nappes damassées Des autels, à l\'encens, aux grands calices d\'or ;
Qui dans le bercement des hosannah s\'endort,

Et se réveille, quand des mères, ramassées Dans l\'angoisse, et pleurant sous leur vieux bonnet noir,
Lui donnent un gros sou lié dans leur mouchoir

Tandis qu\'une folie épouvantable broie Et fait de cent milliers d\'hommes un tas fumant ;
- Pauvres morts ! dans l\'été, dans l\'herbe, dans ta joie, Nature ! ô toi qui fis ces hommes saintement !...

- Il est un Dieu, qui rit aux nappes damassées Des autels, à l\'encens, aux grands calices d\'or ;
Qui dans le bercement des hosannah s\'endort,

Tandis qu\'une folie épouvantable broie Et fait de cent milliers d\'hommes un tas fumant ;
- Pauvres morts ! dans l\'été, dans l\'herbe, dans ta joie, Nature ! ô toi qui fis ces hommes saintement !...

- Il est un Dieu, qui rit aux nappes damassées Des autels, à l\'encens, aux grands calices d\'or ;
Qui dans le bercement des hosannah s\'endort,  Tandis qu\'une folie épouvantable broie
Et fait de cent milliers d\'hommes un tas fumant ; - Pauvres morts ! dans l\'été, dans l\'herbe, dans ta joie,
Nature ! ô toi qui fis ces hommes saintement !...

- Il est un Dieu, qui rit aux nappes damassées Des autels, à l\'encens, aux grands calices d\'or ;
Qui dans le bercement des hosannah s\'endort, encens encens encens encens encens encens.')

p"---------------------------------------------------------------------"
