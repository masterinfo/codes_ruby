
require  'mysql2'
 load  'pizza.rb'
Encoding.default_internal = Encoding::UTF_8   # A rajouter pour r�soudre le pb de charset
Encoding.default_external = Encoding::UTF_8   # A rajouter pour r�soudre le pb de charset
db_host = "localhost"
db_user = "root"
db_pass = ""
db_name = "pizzabox"
# Connexion � MySQL
connex = Mysql2::Client.new(:host => db_host, :username =>db_user, :database =>  db_name)
#requete SQL
results = connex.query("SELECT * FROM pizza")
tabpizzas = []
records = results.map do |row|
 
 
  nompizza= row['DesignPizz']
  #p nompizza
  numeropizza=row['NroPizz']
  #p numeropizza
  prixpizza= "%.2f" % row['TarifPizz']
  #p prixpizza
  
  tabpizzas[numeropizza ]=Pizza.new(prixpizza, nompizza ,  numeropizza)
  
  
  
  
  
end


( 1..13).each {|i| puts tabpizzas[i] }

str = "SELECT  composer.QteComp,ingredient.NomIngr,ingredient.UniteIngr
FROM ingredient, composer where ingredient.CodeIngr=composer.CodeIngrComp
and  composer.NroPizzComp = "


( 1..13).each {|i|

puts tabpizzas[i]

 
resultsing = connex.query(str + i.to_s)

recordsing = resultsing.map do |rowing|
  
  p rowing

end
 
  
  
  
  }



