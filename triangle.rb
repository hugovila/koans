# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  result = raise TriangleError, "Error de triangulo: Ningun lado puede ser igual a 'Cero'" if a == 0 || b == 0 || c == 0
  result = raise TriangleError, "Error de triangulo: Ningun lado puede ser 'Negativo'" if a < 0 || b < 0 || c < 0
  result = raise TriangleError, "Error de triangulo: La suma de dos lados no puede ser inferior al tercero" if (a+b < c) || (b+c < a) || (c+a < b)
  result = raise TriangleError, "Error de triangulo: La suma de dos lados no puede ser igual al tercero" if (a+b == c) || (b+c == a) || (c+a == b)

  result = :equilateral if ( a == b ) && ( b == c )
  result = :isosceles   if (( a == b ) || ( b == c ) || ( c == a)) && (( a != b ) || ( b != c ) || ( c != a ))
  result = :scalene     if ( a != b ) && ( b != c ) && ( c != a )
  return result
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
