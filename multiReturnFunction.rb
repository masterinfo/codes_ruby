def fileReader (nom_de_fichier)
  begin
    lines = File.readlines(nom_de_fichier)
    linesCount = lines.size
    return "Nbr de lignes = #{linesCount}", nom_de_fichier
    rescue
      return "Une erreur s'est produite lors de la lecture du fichier #{nom_de_fichier}", nom_de_fichier
      
    ensure
      puts " PROGRMME DE FIN DANS TOUS LES CAS ", nom_de_fichier # ce bloc est un peu comme finaly dans java
  end
end

a,b = fileReader("voltaireZadig.txt")
puts a
puts b