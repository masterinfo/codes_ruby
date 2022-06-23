db_host = "localhost"
db_user = "root"
db_pass = ""
db_name = "pizzabox"
require 'rubygems' # gem install ruby_gem
require 'active_record' #gem install activerecord

ActiveRecord::Base.establish_connection( :adapter => "mysql2",
                                         :host => db_host,
                                         :username => db_user,
                                         :password => db_pass,
                                         :database => db_name)
#
# class Ingredient < ActiveRecord::Base #table ingredients
# end
# # Ingredient.create(CodeIngr: 'courgette', NomIngr: 'Courgette', UniteIngr: 'c')
#
# tablo_ingredient = Ingredient.all
#
# # puts tablo_ingredient
#
#
# tablo_ingredient.each do |ingredient|
#   p"========================="
#   puts ingredient.CodeIngr_
#   puts ingredient.NomIngr
#   puts ingredient.UniteIngr
#   p"========================="
# end

class Pizza < ActiveRecord::Base #table pizzas
end




tablo_pizza = Pizza.all

# puts tablo_ingredient


tablo_pizza.each do |pizza|
  p"========================="
  puts pizza.id
  puts pizza.DesignPizz
  puts pizza.TarifPizz
  p"========================="
end