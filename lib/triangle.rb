class Triangle

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    all_sides = [@s1, @s2, @s3].sort
    if all_sides.any?{|side| side <= 0} || (all_sides[0] + all_sides[1] <= all_sides[2])
      raise TriangleError
    elsif @s1 == @s2 && @s2 == @s3
      :equilateral
    elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError
  end
end
