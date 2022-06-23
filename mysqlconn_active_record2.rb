require "mysql2"
db_host = "localhost"
db_user = "root"
db_pass = ""
# Connexion ? MySQL
connex = Mysql2::Client.new(:host => db_host, :username =>db_user, :password => db_pass)
# Cr?ation d'une base de test
db_name = "book_db"
strSQL = "CREATE DATABASE #{db_name}"
begin
connex.query(strSQL)
rescue
puts "### Impossible de creer la base ###"
end
# Connexion ? cette base
connex.select_db(db_name)
# Cr?ation d'une table
strSQL = "CREATE TABLE books
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
titre VARCHAR(255) NOT NULL,
auteur VARCHAR(50) NOT NULL,
editeur VARCHAR(50) NOT NULL
)"
begin
connex.query(strSQL)
rescue
puts "### Impossible de creer la table ###"
end
# Remplissage de la base
strSQL = [ \
"INSERT INTO books (titre, auteur, editeur) \
VALUES('Le guide du voyageur galactique', 'Douglas Adams', 'Gallimard')", \
"INSERT INTO books (titre, auteur, editeur) \
VALUES('Dune', 'Frank Herbert', 'Robert Laffont')", \
"INSERT INTO books (titre, auteur, editeur) \
VALUES('toto', 'toto', 'toto')", \
"INSERT INTO books (titre, auteur, editeur) \
VALUES('Fondation', 'Isaac Asimov', 'Gallimard')", \
"INSERT INTO books (titre, auteur, editeur) \
VALUES('La pierre et le sabre', 'Eiji Yoshikawa', 'J\\'ai Lu')", \
"INSERT INTO books (titre, auteur, editeur) \
VALUES('La parfaite lumiere', 'Eiji Yoshikawa', 'J\\'ai Lu')", \
]
begin
strSQL.each { |ligne|
connex.query(ligne)
}
rescue
puts "### Impossible d'inserer les donnees dans la base ###"
end
# Un petit exemple de requ?te...
strSQL = "SELECT * FROM books ORDER BY titre"
result = connex.query(strSQL)


result.each do |ligne|
puts "Titre : #{ligne['titre']}"
puts "Auteur : #{ligne['auteur']}"
puts "Editeur : #{ligne['editeur']}"
puts "-------------------------------------------------"
end
# Ferme la connexion ? la DB
connex.close

p "Active Record**********************************************************************************************************************"
#!/usr/bin/env ruby
  
       require 'rubygems'
       require 'active_record'
  
       ActiveRecord::Base.establish_connection( :adapter  => "mysql2",
                                                :host     => db_host,
                                                :username => db_user,
                                                :password => "",
                                                :database => db_name )


class Book < ActiveRecord::Base	
end
b=Book.find 1
puts b.titre
	

bibli=Book.all
bibli.each do |li|
puts li.id
puts li.titre
puts li.auteur
puts li.editeur
end
	
	
	puts"======================================================"
a = Book.new
a.titre = 'Lusage du monde'
a.auteur = 'Nicolas Bouvier'
a.editeur = '222889401X'
a.save
	
	
bibli=Book.all
bibli.each do |li|
puts li.id
puts li.titre
puts li.auteur
puts li.editeur
end


class BookController 
    attr_reader :etagere

	def exemple
	@etagere = Book.all
  end
	end

puts"____________________________________________________"
L=BookController.new

L.exemple.each do |li|
puts li.id
puts li.titre
puts li.auteur
puts li.editeur
end
puts'============================'
L.etagere.each do |li|
puts li.id
puts li.titre
puts li.auteur
puts li.editeur
puts'============================'
end
