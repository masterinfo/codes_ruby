 require 'docx'

puts Docx::Document.open('test.docx')

 

d = Docx::Document.open('test.docx')
d.each_paragraph do |p|
  puts p
end