puts "saisissez une année de départ?"
deb = gets.chomp.to_i

puts "saisissez une année de fin?"
fin = gets.chomp.to_i

puts "les années bissextiles sont :" 
for j in (deb..fin)
  

   if (j%4 ==0) && (((j%100 != 0) and (j%400 == 0)) or (j%100 !=100))
    puts j.to_s.rjust(25)
end
end
