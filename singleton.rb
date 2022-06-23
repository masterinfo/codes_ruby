class Usine
  private_class_method :new 
  @@uneUsine = nil
  def self.creation()
    if ( !@@uneUsine )
      @@uneUsine = new
    end
    @@uneUsine
  end
  def marche()
    puts "Usine en marche"
  end
end

usine = Usine.creation
usine.display
autreUsine = Usine.creation
autreUsine.display