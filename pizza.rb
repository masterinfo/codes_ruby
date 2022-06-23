class Pizza
  
  attr_accessor :tarifpizza,  :designpizza ,  :numpizza
  
  def initialize( tarifpizza, designpizza ,  numpizza     )
   @tarifpizza =  tarifpizza 
   @designpizza = designpizza   
   @numpizza = numpizza 
  end
  
  def to_s
    "la pizza numero #{@numpizza} a pour nom #{@designpizza} et coûte #{@tarifpizza}   "   
  end
  
  
  
end