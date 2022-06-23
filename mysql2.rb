require  'mysql2'
db_host = "localhost"
db_user = "root"
db_pass = ""
db_name = "pizzabox"
# Connexion à MySQL
connex = Mysql2::Client.new(:host => db_host, :username =>db_user, :database =>  db_name )
#requete SQL
 results = connex.query("SELECT * FROM pizza")

records = results.map do |row|
   p"----------------"  
   p row
   p"----------------"
    
   puts " la pizza : "+ row['DesignPizz']   
   
   puts "Prix%.2f" %  row['TarifPizz']
  
    
end

 