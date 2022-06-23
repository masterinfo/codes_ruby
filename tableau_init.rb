tab = [1, 2, "3"]

tab + ["foo", "bar"]

p tab * 2

p tab[0..1]

p tab[-2..-1]

chaine = ary.join(":")

p chaine
p chaine.split(":")



#hachage
#
#   ruby> h = {1 => 2, "2" => "4"}
#    {1=>2, "2"=>"4"}
#  ruby> h[1]
#    2
#  ruby> h["2"]
#    "4"
#  ruby> h[5]
#    nil
#  ruby> h[5] = 10     # ajoute une valeur
#    10
#  ruby> h
#    {5=>10, 1=>2, "2"=>"4"}
#  ruby> h[1] = nil    # supprime une valeur
#    nil
#  ruby> h[1]
#    nil
#  ruby> h
#    {5=>10, "2"=>"4"}