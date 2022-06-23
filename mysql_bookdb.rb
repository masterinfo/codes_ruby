# To change this template, choose Tools | Templates
# and open the template in the editor.

require "mysql"
db_host = "localhost"
db_user = "root"
db_pass = ""
db_name = "bookdb"
# Connexion à MySQL
connex = Mysql.new(db_host, db_user, db_pass)
# Création d'une base de test
strSQL = "CREATE DATABASE #{db_name}"
begin
  connex.query(strSQL)
rescue
  puts "### Impossible de creer la base ###"
end
# Connexion à cette base
connex.select_db(db_name)
# Création d'une table
strSQL = "CREATE TABLE liste_livres
(
id_livre INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
"INSERT INTO liste_livres (titre, auteur, editeur) \
VALUES('Le guide du voyageur galactique', 'Douglas Adams', 'Gallimard')", \
"INSERT INTO liste_livres (titre, auteur, editeur) \
VALUES('Dune', 'Frank Herbert', 'Robert Laffont')", \
"INSERT INTO liste_livres (titre, auteur, editeur) \
VALUES('Fondation', 'Isaac Asimov', 'Gallimard')", \
"INSERT INTO liste_livres (titre, auteur, editeur) \
VALUES('La pierre et le sabre', 'Eiji Yoshikawa', 'J\\'ai Lu')", \
"INSERT INTO liste_livres (titre, auteur, editeur) \
VALUES('La parfaite lumière', 'Eiji Yoshikawa', 'J\\'ai Lu')" \
]
begin
  strSQL.each { |ligne|
    connex.query(ligne)
  }
rescue
  puts "### Impossible d'inserer les donnees dans la base ###"
end
# Un petit exemple de requête...
strSQL = "SELECT * FROM liste_livres ORDER BY titre"
result = connex.query(strSQL)
result.each_hash do |ligne|
  puts "Titre : #{ligne['titre']}"
  puts "Auteur : #{ligne['auteur']}"
  puts "Editeur : #{ligne['editeur']}"
  puts "-------------------------------------------------"
end
# Ferme la connexion à la DB
connex.close