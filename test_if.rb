# les branchements
puts 'Bonjour, quel est votre prénom ?'
nom = gets.chomp
puts 'Bonjour, ' + nom + '.'
if nom == 'Christian'
  puts 'Quel joli prénom vous avez !'
end



















puts 'Bonjour, et bienvenue au club.'
puts 'Mon nom est Mademoiselle Longbec. Et votre nom est...'
nom = gets.chomp
if nom ==nom.capitalize
  puts 'Je vous en prie, asseyez-vous, ' + nom + '.'
else
  puts nom + '? Vous voulez dire ' + nom.capitalize + ', non ?'
  puts 'On ne vous a donc jamais appris à écrire correctement
votre nom ?'
  bis = gets.chomp
  if bis.downcase == 'oui'
    puts 'Hmmm... bon asseyez-vous !'
  else
    puts 'Dehors !!'
  end
end
31