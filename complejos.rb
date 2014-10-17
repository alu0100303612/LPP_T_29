
class Complejo
  attr_reader :real, :imaginario
  attr_accessor :real, :imaginario
  
  def initialize(real, imaginario)
    #Excepciones
    @real,@imaginario = real, imaginario
    raise ArgumentError, 'La parte real no es un número' unless real.is_a? Numeric
    raise ArgumentError, 'La parte imaginaria no es un número' unless imaginario.is_a? Numeric
  end
  
  def to_s
  return "(#@real + #@imaginario i)"
  end
  
  def +(other)
    Complejo.new(@real + other.real, other.imaginario + @imaginario)
    #Complejo.new(1 + 2, 2)
  end
  
  def -(other)
     Complejo.new(@real - other.real,@imaginario - other.imaginario)
  end
  
  def *(other)
     Complejo.new(@real * other.real - @imaginario * other.imaginario,@real * other.imaginario + @imaginario * other.real)
  end
  
  def div(other)
    divisor = ((other.real*other.real) + (other.imaginario * other.imaginario)).to_f
    real_div = (@real * other.real) + (@imaginario * other.imaginario)
    img_div = (@imaginario * other.real - @real * other.imaginario)
    Complejo.new(real_div/divisor,img_div/divisor)
  end
  
  def **(scalar)
    return Complejo.new(@real * scalar, @imaginario * scalar) if scalar.is_a? Numeric
  end
end