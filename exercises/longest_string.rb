# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4

def longest_string(list)
  longest_so_far = list.first
  list.each {|item|
    if item.size > longest_so_far.size
      longest_so_far = item
    end
  }
  return longest_so_far
end

if __FILE__ == $PROGRAM_NAME
  p longest_string(["a", "zzzz", "c"]) == "zzzz"
  p longest_string(["aaa", "1111", 3]) == "1111"
end
