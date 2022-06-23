

[]
[5]
['Bonjour', 'Adieu']
parfum = 'Vanille' # ceci n'est pas un tableau, bien sûr...
[89.9, parfum, [true, false]] # mais ceci, oui.

noms = ['Ada', 'Belle', 'Christiane']
puts noms
puts noms[0]
puts noms[1]
puts noms[2]
puts noms[3] # ceci est hors indice.


# La méthode each

langages = ['Anglais', 'Allemand', 'Ruby']
langages.each do |langue|
puts 'J\' aime parler en ' + langue + ' !'
puts 'Pas vous ?'
end
puts 'Et tant pis pour le C++ !'
puts '...'



aliments = ['artichaut', 'brioche', 'caramel']
puts aliments
puts
puts aliments.to_s
puts
puts aliments.join(', ')
puts
puts aliments.join(' :) ') + ' 8)'
200.times do
puts []
end


favoris =[]
favoris.push '2001 l\'Odyssée de l\'espace'
favoris.push 'Docteur Folamour'
puts favoris[0]
puts favoris.last
puts favoris.length
puts favoris.pop
puts favoris