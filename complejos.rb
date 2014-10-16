
class Complejo
  attr_accessor :real
  attr_accessor :imaginario
  
  def initialize(n_real, n_imaginario)
    #Excepciones
    raise ArgumentError, 'La parte real no es un número' unless n_real.is_a? Numeric
    raise ArgumentError, 'La parte imaginaria no es un número' unless n_imaginario.is_a? Numeric
  end
  
  def to_s
  return "(#@real + #@imaginario i)"
  end
  
  def + (other)
    Complejo.new((@real + other.real),(other.imaginario + @imaginario))
  end
  
  def + (other)
     Complejo.new((@real + other.real),(other.imaginario + @imaginario))
  end
end