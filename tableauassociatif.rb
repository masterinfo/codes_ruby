require 'mysql2'
db_host="localhost"
db_user="root"
db_pass=""
db_name="pizzabox"

#connexion à Mysql

connex=Mysql2::Client.new(:host=>"localhost",:username=>"root",:database=>db_name)

#requete sql
results= connex.query("SELECT* FROM pizza")
#records=results.map do |row|

 res=[]
 results.map.each do |row|
  res.push(row ['NroPizz']=>row)
end

 p res

