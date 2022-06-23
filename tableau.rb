x = [1, 2, 3, 4]
puts x[2]

x[2] += 1
puts x[2]

 x.push(45) 
  p x 

x.pop

x.last
x.length


y =[]
y << "jhjhj"

x = ["Word", "Play", "Fun"]
puts x.join



x = ["Word", "Play", "Fun",4]
puts x.join(', ')

puts "Short sentence. Another. No more.".split(/\./)
puts "Short sentence. Another. No more.".split(/\./).inspect #

[1, "test", 2, 3, 4].each { |e| p e.to_s + "X" }

 p [1, 2, 3, 4].collect { |e| e* 2 }
 p "-----------------------------------------------"
  tab = [1, 2, "3"]
 p tab + x
 
 p tab*2
 p (tab + x).join(":")
 p (tab + tab).join(":")
 
 
 x = []
puts "x is empty" if x.empty?

x = [1, 2, 3]
p x.first
p x.last
p x.first(3).join("-")
p x.first(2).join("-")
p x.reverse

a = [ 1, 3, 3, 3, 3, 5]
a.delete(3)
p a
 

t = { "nom" =>"alain" }
 
dictionary = { 'cat' => 'feline animal', 'dog' => 'canine animal' }

puts dictionary.size
puts dictionary['cat']
x =dictionary  
x.each { |key, val | p "#{key} equals #{val }" }

x = { "a" => 1, "b" => 2 } #Iterator 
x.each { |key, value| p "#{key} equals #{value}" }







