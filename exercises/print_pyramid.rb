# Method name: print_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall
#         at its tallest
#
# For example, print_pyramid(4) should print
#
# *
# **
# ***
# ****
# ***
# **
# *

# This is how we require the print-triangle.rb file in the current folder.
# We can now use the "print_triangle" and "print_line" methods we defined
# there -- as if we defined them here!

def print_line(count)
  count.downto(1) {print "* "}
  print "\n"  
end

def print_triangle(height, direction)
  case direction
  when 'up'
    (1..height).each {|x| print_line(x)}
  when 'down'
    height.downto(1) {|x| print_line(x)}
  end
end

def print_pyramid(height)
  print_triangle(height, 'up')
  print_triangle(height-1, 'down')
end

if __FILE__ == $PROGRAM_NAME
  print_pyramid(6)
  print_pyramid(15)
  print_pyramid(20)
  print_pyramid(0)
  print_pyramid(-2)
   print_pyramid(7)
end
