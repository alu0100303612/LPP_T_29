#File: complejos.rb

require "./complejos.rb"
require "test/unit"

class Test_Complejos < Test::Unit::TestCase
  
  def setup
    @x = Complejo.new(2, 2)
    @y = Complejo.new(1, 3)
  end
  
  def test_suma
    @x = @x + @y
    assert (@x.real == 3 and @x.imaginario == 5)
  end
  
  def test_resta
    @x = @x - @y
    assert (@x.real == 1 and @x.imaginario == -1)
  end
  
  def test_multiplicacion
    @x = @x * @y
    assert (@x.real == -4 and @x.imaginario == 8)
  end
  
  def test_division
    @x = @x.div @y
    assert (@x.real == 0.8 and @x.imaginario == -0.4)
  end
  
  def test_escalar
    @x = @x ** 2
    assert (@x.real == 4 and @x.imaginario == 4)
    #@x = @x ** @y
    #assert (@x.real == 2 and @x.imaginario == 6)
  end
  
  def test_parametros
    # Comprobar si se insertas letras en el real
    assert_raise( ArgumentError ) do
    Complejo.new('a', 2)
    end
    # Comprobar si se insertas letras en el imaginario
    assert_raise( ArgumentError ) do
    Complejo.new(2, 'a')
    end
  end
end