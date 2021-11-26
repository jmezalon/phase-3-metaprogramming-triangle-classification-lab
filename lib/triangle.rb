class Triangle
  # write code here
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind

    valid_triangles
      if @a == @b && @a == @c
        :equilateral
      elsif @a == @b || @b == @c || @a == @c
        :isosceles
      else
        :scalene
      end
  end

  def sides_are_positive?
    [@a, @b, @c].all?(&:positive?)
  end

  def sides_iniquality?
    @a + @b > @c && @a + @c > @b && @b + @c > @a
  end

  def valid_triangles
    raise TriangleError unless sides_are_positive? && sides_iniquality?  
  end

  class TriangleError < StandardError
  end
end
