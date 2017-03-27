require('rspec')
require('triangle')
require('pry')

describe (Triangle) do
  describe ("#side1") do
    it('returns side1 of the Triangle') do
      new_triangle = Triangle.new(1,1,1)
      expect(new_triangle.side1()).to(eq(1))
    end
  end

  describe ("#side2") do
    it('returns side2 of the Triangle') do
      new_triangle = Triangle.new(1,2,1)
      expect(new_triangle.side2()).to(eq(2))
    end
  end

  describe ("#side3") do
    it('returns side2 of the Triangle') do
      new_triangle = Triangle.new(1,2,3)
      expect(new_triangle.side3()).to(eq(3))
    end
  end

  describe ("is_equilateral?") do
    it('returns true if all sides are equal') do
      new_triangle = Triangle.new(3,3,3)
      expect(new_triangle.is_equilateral?()).to(eq(true))
    end
  end

    describe ("is_isosceles?") do
      it('returns true if all 2 out of 3 sides are equal') do
        new_triangle = Triangle.new(2,2,4)
        expect(new_triangle.is_isosceles?()).to(eq(true))
      end
      it('returns true if all 2 out of 3 sides are equal') do
        new_triangle = Triangle.new(2,3,4)
        expect(new_triangle.is_isosceles?()).to(eq(false))
      end

      describe ("is_not_triangle?") do
        it('returns false if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side.') do
          new_triangle = Triangle.new(2,8,2)
          expect(new_triangle.is_not_triangle?()).to(eq(true))
        end
      end

      describe ("is_scalene?") do
        it('returns false if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side.') do
          new_triangle = Triangle.new(20,30,32)
          expect(new_triangle.is_scalene?()).to(eq(true))
        end
      end

  end


end
