x = [1, 2, 3]
x.each { |y| puts y }






def each_vowel
%w{a e i o u}.each { |vowel| yield vowel }
end

each_vowel { |vowel| puts vowel }





def Noms
   yield("nicolas")
   yield(" andré")
   yield("arthus")
   end
 
Noms do |nom|
  puts "Salut " + nom + ", comment vas-tu?"
end


def Noms
   yield("nicolas","brigite")
      end
 
 Noms do |nom, prenom|
  puts "Salut " + nom + prenom +", comment vas-tu?"
end


print_param_to_screen = lambda { |x| puts x }
print_param_to_screen.call(100)