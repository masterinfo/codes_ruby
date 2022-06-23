def analyseur(filename)

  begin

    lines = File.readlines(filename) # transform in array
    line_count = lines.size

    return "there are #{line_count} lines", filename

  rescue
    puts 'there is a problem'

  ensure

    puts ' i am doing this anyway'

  end

end

a, b = analyseur("voltaireZadig.txt")
p a
p b

