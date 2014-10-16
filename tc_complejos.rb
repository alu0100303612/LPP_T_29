#File: complejos.rb

require "test/unit"

class Test_Complejos < Test::Unit::TestCase
  
  def setup
    @x = Complejo.new(2, 2)
    @y = Complejo.new(1, 3)
  end
  
  def test_suma
    @x.+ @y
    assert @x.real == 3 and @x.imaginario == 5
  end
  
  def test_resta
    @x.+ @y
    assert @x.real == 1 and @x.imaginario == -1
  end