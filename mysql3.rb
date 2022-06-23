
require  'mysql2'
Encoding.default_internal = Encoding::UTF_8   # A rajouter pour résoudre le pb de charset
Encoding.default_external = Encoding::UTF_8   # A rajouter pour résoudre le pb de charset
db_host = "localhost"
db_user = "root"
db_pass = ""
db_name = "pizzabox"
# Connexion ï¿½ MySQL
connex = Mysql2::Client.new(:host => db_host, :username =>db_user, :database =>  db_name)
#requete SQL
results = connex.query("SELECT * FROM pizza")
pizzas = []
pizzas2 = []
records = results.map do |row|
  p"----------------"  
  p row
  
  row.each { |key, value| p "#{key} equals #{value}" }
  
  p"----------------"
  
  puts " la pizza : "+ row['DesignPizz']   
  p"======================"
  
  p  row['DesignPizz'].encode("Cp1252")
  p"===================="
  puts "Prix%.2f" %  row['TarifPizz']
  
  
  
  nompizza= row['DesignPizz']
  p nompizza
  numeropizza=row['NroPizz']
  p numeropizza
  prixpizza= "%.2f" % row['TarifPizz']
  p prixpizza 
  
   pizzas2[numeropizza ]=row;
  
  pizzas[numeropizza ]= {  'numpizz' => row['NroPizz'],   'DesignPizz' => row['DesignPizz'],   'tarif' => "%.2f" %row['TarifPizz']  }
 p "---------------------------------------------------------------------------------"
       pizzas[numeropizza ].each { |key, value| p "#{key} equals #{value}" }
end
p "---------------------------------------------------------------------------------"
( 1..13).each {|i| puts pizzas[i] }
 
 p"******************************************************"
 
 ( 1..13).each {|i| puts pizzas2[i] }
 