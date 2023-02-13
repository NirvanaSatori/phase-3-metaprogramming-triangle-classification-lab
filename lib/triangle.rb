class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize (a,b,c)
    @a=a
    @b=b
    @c=c
  end

  def kind
    if (@a <= 0 || @b <= 0 || @c <= 0) || ( @a + @b < @c || @a + @c < @b )
      raise TriangleError
    else 
      if @a == @b && @a == @c 
        :equilateral
      elsif @a == @b || @a == @c || @b == @c 
        :isosceles
      elsif @a != @b && @b!= @c
        :scalene
      end
    end

    class TriangleError < StandardError
      def error
        "invalid triangle"
      end
    end

end

tri = Triangle.new 2, 2, 2
tri = Triangle.new 3, 1, 1

