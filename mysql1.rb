require  'mysql2'
@db_host = "localhost"
@db_user = "root"
@db_pass = ""
@db_name = "ruby_DB"
# Connexion à MySQL
 
begin
client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass)
client.query("DROP DATABASE IF EXISTS #{@db_name}")
client.query("CREATE DATABASE #{@db_name}")
client.close

puts "###   la base est créée l###
rescue
puts "### Impossible de creer la base ###"
end


 

