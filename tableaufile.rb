mon_tabl = ["Bonjour,", "Content de vous rencontrer.", "a va bien ?"]
mon_fichier = File.open("test.txt", "w+")
mon_tabl.each { |element|
mon_fichier << element+"\n"
}
mon_fichier.close