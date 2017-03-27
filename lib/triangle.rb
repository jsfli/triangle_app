require('pry')

class Triangle

 define_method(:initialize) do |side1, side2, side3|
   @side1 = Integer(side1)
   @side2 = Integer(side2)
   @side3 = Integer(side3)
 end

  define_method(:side1) do
    @side1
  end

  define_method(:side2) do
    @side2
  end

  define_method(:side3) do
    @side3
  end

  define_method(:is_equilateral?) do
    @side1.eql?(@side2).&(@side2.eql?(@side3))
  end

  define_method(:is_isosceles?) do
    @side1==@side2 || @side2==@side3 || @side3==@side1
  end

  define_method(:is_not_triangle?) do
    (@side1 + @side2) <= @side3 || (@side2 + @side3) <= @side1 || (@side3 + @side1) <= @side2
  end

  define_method(:is_scalene?) do
    is_not_triangle?() == false &&
    is_equilateral?() == false &&
    is_isosceles?() == false
  end

end #end of class
