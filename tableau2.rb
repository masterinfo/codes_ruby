puts "Short sentence. Another. No more.".split(/\./)
 puts "Short sentence. Another. No more.".split(/\./).inspect
 
 [1, "test", 2, 3, 4].each { |e| p e.to_s + "X" }
 
 
 p [1, 2, 3, 4].collect { |e| e* 2 }
 
   x = []
  p "x is empty" if x.empty?
  
  a = [ 1, 3, 3, 3, 3, 5]
  a.delete(3)
  p a
  
   
dictionary = {'cat' => 'feline animal', 'dog' => 'canine animal' }

pizza_item
puts dictionary.size
puts dictionary['cat']

x = dictionary  
x.each { |key, value| p "#{key} equals #{value}" }