# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall
#         at its tallest
#
# For example, print_horizontal_pyramid(4) should print
#
#    *
#   ***
#  *****
# *******

def print_horizontal_pyramid(height)
  line = 1
  spaces = height
  
  line.upto(height) do
    spaces.times do
      print ' '
    end
    (2 * line -1).times do
      print '*'
    end
    print "\n"
    spaces -= 1
    line += 1
  end
end

if __FILE__ == $PROGRAM_NAME
  print_horizontal_pyramid(5)
end
