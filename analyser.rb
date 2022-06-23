 text=''
 tab=[]
line_count = 0
File.open("voltaireZadig.txt").each do |line|
line_count += 1
text << line
tab << line
end
puts "#{line_count} lines"
p  text 
p "------------------"
p tab


p "*************************************"
p "this is a test".gsub(/t/, 'X')