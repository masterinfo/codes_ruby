
require  'mysql'
db_host = "localhost"
db_user = "root"
db_pass = ""
db_name = "rubyDB"
# Connexion à MySQL
connex = Mysql.new(db_host, db_user, db_pass)
# Création d'une base de test
strSQL = "CREATE DATABASE #{db_name}"
begin
  connex.query(strSQL)
rescue
  puts "### Impossible de creer la base ###"
end